namespace FusionCalcV3.Models;

public interface IDemonRepo
{
    Demons GetDemonResult(string race, int level);
    public string GetRace(string demon1, string demon2);
    IEnumerable<Demons> GetAllDemons();
    Demons GetDemon(string name);
}