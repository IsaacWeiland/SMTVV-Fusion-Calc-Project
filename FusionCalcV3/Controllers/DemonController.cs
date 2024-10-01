using FusionCalcV3.Models;
using Microsoft.AspNetCore.Mvc;

namespace FusionCalcV3.Controllers;

public class DemonController : Controller
{
    private readonly IDemonRepo _demonRepo;

    public DemonController(IDemonRepo demonRepo)
    {
        _demonRepo = demonRepo;
    }
    
    // GET
    public IActionResult Index()
    {
        var demons = _demonRepo.GetAllDemons();
        return View(demons);
    }
}