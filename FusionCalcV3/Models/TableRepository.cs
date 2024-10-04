using System.Data;
using Dapper;

namespace FusionCalcV3.Models;

public class TableRepository : ITableRepo
{
    private readonly IDbConnection _conn;

    public TableRepository(IDbConnection conn)
    {
        _conn = conn;
    }

    public IEnumerable<FusionTable> GetFuseChart()
    {
        return _conn.Query<FusionTable>("SELECT * FROM fuse;");
    }

    public FusionTable GetRaceStats(string id)
    {
        return _conn.QuerySingle<FusionTable>("SELECT * FROM fuse WHERE RaceName = @id", new { id });
    }

    public void AddToFusion(FusionTable table)
    {
        _conn.Execute(
            "INSERT INTO fuse (RaceName, Herald, Megami, Avian, Divine, Yoma, Vile, Raptor, Deity, Wargod, Avatar, Holy, Genma, Fairy, Beast, Jirae, Fiend, Jaki, Wilder, Fury, Lady, Dragon, Kishin, kunitsu, Femme, Brute, Fallen, Night, Snake, Tyrant, Drake, Haunt, Foul, UMA, Enigma, Qadishtu, Devil, Primal, Element, Earth, Wind, Fire, Water)" +
            "\nVALUES (@race, @herald, @megami, @avian, @divine, @yoma, @vile, @raptor, @deity, @wargod, @avatar, @holy, @genma, @fairy, @beast, @jirae, @fiend, @jaki, @wilder, @fury, @lady, @dragon, @kishin, @kunitsu, @femme, @brute, @fallen, @night, @snake, @tyrant, @drake, @haunt, @foul, @uma, @enigma, @qadishtu, @devil, @primal, @element, @earth, @wind, @fire, @water)",
        new
        {
            race = table.RaceName, avatar = table.Avatar, avian = table.Avian, beast = table.Beast, brute = table.Brute,
            deity = table.Deity, devil = table.Devil, divine = table.Divine, dragon = table.Dragon,
            drake = table.Drake, enigma = table.Enigma, fairy = table.Fairy, fallen = table.Fallen, femme = table.Femme,
            fiend = table.Fiend, foul = table.Foul, fury = table.Fury, genma = table.Genma, haunt = table.Haunt,
            herald = table.Herald, holy = table.Holy, jaki = table.Jaki, jirae = table.Jirae, kishin = table.Kishin,
            kunitsu = table.Kunitsu, lady = table.Lady, megami = table.Megami, night = table.Night, primal = table.Primal,
            qadishtu = table.Qadishtu, raptor = table.Raptor, snake = table.Snake, tyrant = table.Tyrant, uma = table.UMA,
            vile = table.Vile, wargod = table.Wargod, wilder = table.Wilder, yoma = table.Yoma, element = table.Element,
            earth = table.Earth, wind = table.Wind, fire = table.Fire, water = table.Water
        });
    }
    public void UpdateToFusion(FusionTable table)
    {
        _conn.Execute(
            "UPDATE fuse SET Herald = @herald, Megami = @megami, Avian = @avian, Divine = @divine, Yoma = @yoma, Vile = @vile, Raptor = @raptor, Deity = @deity, Wargod = @wargod, " +
            "Avatar = @avatar, Holy = @holy, Genma = @genma, Fairy = @fairy, Beast = @beast, Jirae = @jirae, Fiend = @fiend, Jaki = @jaki, Wilder = @wilder, " +
            "Fury = @fury, Lady = @lady, Dragon = @dragon, Kishin = @kishin, kunitsu = @kunitsu, Femme = @femme, Brute = @brute, Fallen = @fallen, Night = @night, Snake = @snake, " +
            "Tyrant = @tyrant, Drake = @drake, Haunt = @haunt, Foul = @foul, UMA = @uma, Enigma = @enigma, Qadishtu = @qadishtu, Devil = @devil, Primal = @primal, " +
            "Element = @element, Earth = @earth, Wind = @wind, Fire = @fire, Water = @water WHERE RaceName = @id",
            new
            {
                id = table.RaceName,
                avatar = table.Avatar, avian = table.Avian, beast = table.Beast, brute = table.Brute,
                deity = table.Deity, devil = table.Devil, divine = table.Divine, dragon = table.Dragon,
                drake = table.Drake, enigma = table.Enigma, fairy = table.Fairy, fallen = table.Fallen, femme = table.Femme,
                fiend = table.Fiend, foul = table.Foul, fury = table.Fury, genma = table.Genma, haunt = table.Haunt,
                herald = table.Herald, holy = table.Holy, jaki = table.Jaki, jirae = table.Jirae, kishin = table.Kishin,
                kunitsu = table.Kunitsu, lady = table.Lady, megami = table.Megami, night = table.Night, primal = table.Primal,
                qadishtu = table.Qadishtu, raptor = table.Raptor, snake = table.Snake, tyrant = table.Tyrant, uma = table.UMA,
                vile = table.Vile, wargod = table.Wargod, wilder = table.Wilder, yoma = table.Yoma, element = table.Element,
                earth = table.Earth, wind = table.Wind, fire = table.Fire, water = table.Water
            });
    }

    public FusionTable AssignTable()
    {
        var table = new FusionTable();
        return table;
    }
}