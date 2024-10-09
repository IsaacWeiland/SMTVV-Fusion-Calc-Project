namespace FusionCalcV3.Models;

public interface IDemonRepo
{
    IEnumerable<Demons> GetAllDemons();
    Demons GetDemon(string name);
    public Demons DemonMath(string input1, string input2);
}