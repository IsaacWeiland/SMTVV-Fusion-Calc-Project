namespace FusionCalcV3.Models;

public interface ITableRepo
{
    IEnumerable<FusionTable> GetFuseChart();
    FusionTable GetRaceStats(string id);
    void AddToFusion(FusionTable table);
    void UpdateToFusion(FusionTable table);
    FusionTable AssignTable();
}