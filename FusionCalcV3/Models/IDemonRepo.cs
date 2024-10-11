namespace FusionCalcV3.Models;

public interface IDemonRepo
{
    IEnumerable<Demons> GetAllDemons();
    Demons GetDemon(string name);
    public Demons DemonMath(string input1, string input2);
    public string GetRace(string demon1, string demon2);
    public Demons GetDemonResult(string race, int level);
}