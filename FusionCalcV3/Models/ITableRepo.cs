namespace FusionCalcV3.Models;

public interface ITableRepo
{
    IEnumerable<FusionTable> GetFuseChart();
    FusionTable GetRaceStats(int raceID);
    void AddToFusion(FusionTable table);
    FusionTable AssignTable();
}