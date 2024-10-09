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

    public IActionResult FusionFailed()
    {
        return View();
    }

    public IActionResult ViewDemon(string id)
    {
        var demon = _demonRepo.GetDemon(id);
        return View(demon);
    }

    public IActionResult ViewCalculator()
    {
        var demons = _demonRepo.GetAllDemons();
        return View(demons);
    }
    public IActionResult CalculateResult(string input1, string input2)
    {
        var resultDemon = _demonRepo.DemonMath(input1, input2);
        if (resultDemon == null)
        {
            return RedirectToAction("FusionFailed");
        }
        return RedirectToAction("ViewDemon", new {id = resultDemon.Name});
    }
}