using System.Data;
using Dapper;
using MySqlX.XDevAPI.Relational;

namespace FusionCalcV3.Models;

public class DemonRepository : IDemonRepo
{
    private readonly string[] _elementName = new[] { "Erthys", "Aeros", "Flaemis", "Aquans" };
    private readonly IDbConnection _conn;

    public DemonRepository(IDbConnection conn)
    {
        _conn = conn;
    }

    public IEnumerable<Demons> GetAllDemons()
    {
        return _conn.Query<Demons>("SELECT * FROM demons ORDER BY Level;");
    }

    public Demons GetDemon(string name)
    {
        return _conn.QuerySingle<Demons>("SELECT * FROM demons WHERE Name = @name", new { name});
    }

    public Demons DemonMath(string input1, string input2)
    {
        string resultRace;
        Demons resultDemon;
        var demon1 = GetDemon(input1);
        var demon2 = GetDemon(input2);
        var resultLevel = CalculateLevel.Level(demon1.Level, demon2.Level);
        if (demon1.Race == "Element")
        {
            resultRace = GetRace(demon1.Name, demon2.Race);
            resultDemon = IsElemental(resultRace, demon2.Race, demon2.Level);
        }
        else if (demon2.Race == "Element")
        {
            resultRace = GetRace(demon1.Race, demon2.Name);
            resultDemon = IsElemental(resultRace, demon1.Race, demon1.Level);
        }
        else
        {
            resultRace = GetRace(demon1.Race, demon2.Race);
            resultDemon = GetDemonResult(resultRace, resultLevel);
        }

        return resultDemon;
    }

    public string GetRace(string demon1, string demon2)
    {
        string result;
        if (_elementName.Contains(demon2))
        {
            result = _conn.QuerySingle<string>("SELECT " + demon2 + " FROM fuse WHERE RaceName = @demon1",
                new { demon1 });
            return result;
        }
        else
        {
            result = _conn.QuerySingle<string>("SELECT " + demon1 + " FROM fuse WHERE RaceName = @demon2",
                new { demon2 });
            return result;
        }
    }

    public Demons IsElemental(string elementalNum, string race, int baseLevel)
    {
        Demons result;
        if (elementalNum == "1")
        {
            if (!(baseLevel >= GetMaxRaceLevel(race)))
            {
                while (true)
                {
                    baseLevel++;
                    try
                    {
                        result = _conn.QuerySingle<Demons>(
                            "SELECT * FROM demons WHERE Race = @race AND Level = @level AND IsSpecialFuse IS NOT TRUE AND IsAccident IS NOT TRUE",
                            new { race, level = baseLevel });
                    }
                    catch (InvalidOperationException e)
                    {
                        baseLevel++;
                        continue;
                    }
                    if (!result.Name.Equals(null))
                    {
                        return result;
                    }
                }
            }
            else
            {
                return null;
            }
        }
        else if(elementalNum == "-1")
        {
            if (!(baseLevel <= GetMinRaceLevel(race)))
            {
                baseLevel--;
                while (true)
                {
                    try
                    {
                        result = _conn.QuerySingle<Demons>(
                            "SELECT * FROM demons WHERE Race = @race AND Level = @level AND IsSpecialFuse IS NOT TRUE AND IsAccident IS NOT TRUE",
                            new { race, level = baseLevel });
                    }
                    catch (InvalidOperationException e)
                    {
                        baseLevel--;
                        continue;
                    }

                    if (!result.Name.Equals(null))
                    {
                        return result;
                    }
                }
            }
            else
            {
                return null;
            }
        }
        else
        {
            return null;
        }
    }

    private int GetMaxRaceLevel(string race)
    {
        try
        {
            return _conn.QuerySingle<int>(
                "SELECT MAX(Level) FROM demons WHERE RACE = @race AND IsSpecialFuse IS NOT TRUE;",
                new { race });
        }
        catch (InvalidCastException e)
        {
            return 0;
        }
        catch (DataException f)
        {
            return 0;
        }
       
    }

    private int GetMinRaceLevel(string race)
    {
        try
        {
            return _conn.QuerySingle<int>(
                "SELECT MIN(Level) FROM demons WHERE RACE = @race AND IsSpecialFuse IS NOT TRUE;",
                new { race });
        }
        catch (InvalidCastException e)
        {
            return 0;
        }
        catch (DataException f)
        {
            return 0;
        }
       
    }

    public Demons GetDemonResult(string race, int level)
    {
        Demons result;
        while (true)
        {
            if (level >= GetMaxRaceLevel(race))
            {
                if (GetMaxRaceLevel(race) == 0)
                {
                    return null;
                }
                try
                {
                    result = _conn.QuerySingle<Demons>(
                        "SELECT * FROM demons WHERE Race = @race AND Level = @level AND IsSpecialFuse IS NOT TRUE AND IsAccident IS NOT TRUE",
                        new { race, level });
                }
                catch (InvalidOperationException e)
                {
                    level--;
                    continue;
                }
                if (!result.Name.Equals(null))
                {
                    return result;
                }
            }
            else
            {
                try
                {
                    result = _conn.QuerySingle<Demons>(
                        "SELECT * FROM demons WHERE Race = @race AND Level = @level AND IsSpecialFuse IS NOT TRUE AND IsAccident IS NOT TRUE",
                        new { race, level });
                }
                catch (InvalidOperationException e)
                {
                    level++;
                    continue;
                }
                if (!result.Name.Equals(null))
                {
                    return result;
                }
                
            }
        }
    }
}