namespace FusionCalcV3.Models;

public interface IDemonRepo
{
    Demons GetDemonResult(string race, int level);
    public string GetRace(string demon1, string demon2);
    public Demons IsElemental(string elementalNum, string race, int baseLevel);
    IEnumerable<Demons> GetAllDemons();
    Demons GetDemon(string name);
}