namespace FusionCalcV3.Models;

public interface ITableRepo
{
    IEnumerable<FusionTable> GetFuseChart();
    void AddToFusion(FusionTable table);
    FusionTable AssignTable();
}