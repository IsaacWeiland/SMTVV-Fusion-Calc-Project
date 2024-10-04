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
        var demon1 = _demonRepo.GetDemon(input1);
        var demon2 = _demonRepo.GetDemon(input2);
        var resultLevel = CalculateLevel.Level(demon1.Level, demon2.Level);
        string resultRace;
        Demons resultDemon;
        if (demon1.Race == "Element")
        {
            resultRace = _demonRepo.GetRace(demon1.Name, demon2.Race);
            resultDemon = _demonRepo.IsElemental(resultRace, demon2.Race, demon2.Level);
        }
        else if (demon2.Race == "Element")
        {
            resultRace = _demonRepo.GetRace(demon1.Race, demon2.Name);
            resultDemon = _demonRepo.IsElemental(resultRace, demon1.Race, demon1.Level);
        }
        else
        {
            resultRace = _demonRepo.GetRace(demon1.Race, demon2.Race);
            resultDemon = _demonRepo.GetDemonResult(resultRace, resultLevel);
        }
        if (resultDemon == null)
        {
            return RedirectToAction("FusionFailed");
        }
        return RedirectToAction("ViewDemon", new {id = resultDemon.Name});
    }
}