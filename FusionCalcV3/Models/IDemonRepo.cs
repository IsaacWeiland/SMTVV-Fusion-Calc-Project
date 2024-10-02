namespace FusionCalcV3.Models;

public interface IDemonRepo
{
    IEnumerable<Demons> GetAllDemons();
    Demons GetDemon(string name);
}