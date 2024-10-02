using FusionCalcV3.Models;
using Microsoft.AspNetCore.Mvc;

namespace FusionCalcV3.Controllers;

public class TableController : Controller
{
    
    private readonly ITableRepo _tableRepo;

    public TableController(ITableRepo tableRepo)
    {
        _tableRepo = tableRepo;
    }
    
    // GET
    public IActionResult Index()
    {
        var table = _tableRepo.GetFuseChart();
        return View(table);
    }

    public IActionResult ViewRace(int id)
    {
        var viewRace = _tableRepo.GetRaceStats(id);
        return View(viewRace);
    }

    public IActionResult InsertTable()
    {
        var table = _tableRepo.AssignTable();
        return View(table);
    }

    public IActionResult InsertToDatabase(FusionTable table)
    {
        _tableRepo.AddToFusion(table);
        return RedirectToAction("Index");
    }
}