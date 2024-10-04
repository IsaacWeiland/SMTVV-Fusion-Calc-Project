using System.Data;
using Dapper;
using MySqlX.XDevAPI.Relational;

namespace FusionCalcV3.Models;

public class DemonRepository : IDemonRepo
{
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
        // if (demon1 == "Element")
        // {
        //     
        // }
        // else if (demon2 == "Element")
        // {
        //     
        // }
        // else
        // {
            string result;
            switch (demon1)
            {
                case "Herald":
                    result = _conn.QuerySingle<string>("SELECT Herald FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "Megami":
                    result = _conn.QuerySingle<string>("SELECT Megami FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "Avian":
                    result = _conn.QuerySingle<string>("SELECT Avian FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "Deity":
                    result = _conn.QuerySingle<string>("SELECT Deity FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "Wargod":
                    result = _conn.QuerySingle<string>("SELECT Wargod FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "Avatar":
                    result = _conn.QuerySingle<string>("SELECT Avatar FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "Holy":
                    result = _conn.QuerySingle<string>("SELECT Holy FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "Genma":
                    result = _conn.QuerySingle<string>("SELECT Genma FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "Fury":
                    result = _conn.QuerySingle<string>("SELECT Fury FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "Lady":
                    result = _conn.QuerySingle<string>("SELECT Lady FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "Dragon":
                    result = _conn.QuerySingle<string>("SELECT Dragon FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "Kishin":
                    result = _conn.QuerySingle<string>("SELECT Kishin FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "Kunitsu":
                    result = _conn.QuerySingle<string>("SELECT Kunitsu FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "Enigma":
                    result = _conn.QuerySingle<string>("SELECT Enigma FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "Divine":
                    result = _conn.QuerySingle<string>("SELECT Divine FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "Yoma":
                    result = _conn.QuerySingle<string>("SELECT Yoma FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "Fairy":
                    result = _conn.QuerySingle<string>("SELECT Fairy FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "Beast":
                    result = _conn.QuerySingle<string>("SELECT Beast FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "Jirae":
                    result = _conn.QuerySingle<string>("SELECT Jirae FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "Fiend":
                    result = _conn.QuerySingle<string>("SELECT Fiend FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "Femme":
                    result = _conn.QuerySingle<string>("SELECT Femme FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "Brute":
                    result = _conn.QuerySingle<string>("SELECT Brute FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "Fallen":
                    result = _conn.QuerySingle<string>("SELECT Fallen FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "Night":
                    result = _conn.QuerySingle<string>("SELECT Night FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "Snake":
                    result = _conn.QuerySingle<string>("SELECT Snake FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "Foul":
                    result = _conn.QuerySingle<string>("SELECT Foul FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "UMA":
                    result = _conn.QuerySingle<string>("SELECT UMA FROM fuse WHERE RaceName = @demon2", new { demon2 });
                    return result;
                case "Qadishtu":
                    result = _conn.QuerySingle<string>("SELECT Qadishtu FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "Devil":
                    result = _conn.QuerySingle<string>("SELECT Devil FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "Primal":
                    result = _conn.QuerySingle<string>("SELECT Primal FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "Vile":
                    result = _conn.QuerySingle<string>("SELECT Vile FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "Raptor":
                    result = _conn.QuerySingle<string>("SELECT Raptor FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "Jaki":
                    result = _conn.QuerySingle<string>("SELECT Jaki FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "Wilder":
                    result = _conn.QuerySingle<string>("SELECT Wilder FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "Tyrant":
                    result = _conn.QuerySingle<string>("SELECT Tyrant FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "Drake":
                    result = _conn.QuerySingle<string>("SELECT Drake FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                case "Haunt":
                    result = _conn.QuerySingle<string>("SELECT Haunt FROM fuse WHERE RaceName = @demon2",
                        new { demon2 });
                    return result;
                default:
                    Console.WriteLine("DEBUG: ERROR TYPO LIKELY");
                    return null;
            }
        //}
    }
}