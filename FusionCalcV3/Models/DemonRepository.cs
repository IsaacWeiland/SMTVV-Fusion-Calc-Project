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
        return _conn.QuerySingle<Demons>("SELECT * FROM demons WHERE Name = @name", new { name = name});
    }

    public Demons GetDemonResult(string race, int level)
    {
        Demons result;
        while (true)
        {
            if (level > GetMaxRaceLevel(race))
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
}