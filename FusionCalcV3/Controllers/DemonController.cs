using FusionCalcV3.Models;
using Microsoft.AspNetCore.Mvc;

namespace FusionCalcV3.Controllers;

public class DemonController : Controller
{
    private readonly IDemonRepo _repo;

    public DemonController(IDemonRepo repo)
    {
        _repo = repo;
    }
    // GET
    public IActionResult Index()
    {
        var demons = _repo.GetAllDemons();
        return View(demons);
    }
}