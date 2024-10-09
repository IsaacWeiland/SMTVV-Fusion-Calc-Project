using System.Collections.Immutable;
using System.Data;
using FusionCalcV3.Controllers;
using FusionCalcV3.Models;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Mvc;
using Moq;
using Moq.Protected;
using MySql.Data.MySqlClient;
using Mysqlx.Notice;
using Org.BouncyCastle.Crypto.Parameters;

namespace FusionCalcTests;

public class UnitTest1
{
    private readonly Mock<IDemonRepo> _mockRepo;
    private readonly DemonController _demonController;
    public UnitTest1()
    {
        _mockRepo = new Mock<IDemonRepo>();
        _demonController = new DemonController(_mockRepo.Object);
    }
    [Fact]
    public void TestGetAll()
    {
        _mockRepo.Setup(repo => repo.GetAllDemons()).Returns(GetDemonsTest);
        var result = _demonController.Index();
        var viewResult = Assert.IsType<ViewResult>(result);
        var model = Assert.IsAssignableFrom<IEnumerable<Demons>>(viewResult.ViewData.Model);
        Assert.NotNull(model);
        Assert.True(model.Any());
    }

    [Theory]
    [InlineData("Kinmamon", "Lilith", "Demeter")]
    public void TestFusion(string input1, string input2, string expInput)
    {
        _mockRepo.Setup(repo => repo.DemonMath(input1, input2));
        var result = _demonController.ViewDemon(expInput);
        var viewResult = Assert.IsType<ViewResult>(result);
        var model = Assert.IsAssignableFrom<IEnumerable<Demons>>(viewResult.ViewData.Model);
        Assert.NotNull(model);
        Assert.True(model.Any());
    }
    

    private List<Demons> GetDemonsTest()
    {
        return new List<Demons>()
        {
            new Demons
            {
                Name = "Mad Gasser", Race = "Foul", Level = 48, Alignment = "Dark-Chaos", IsAccident = false,
                IsSpecial = false
            },
            new Demons
            {
                Name = "Pixie", Race = "Fairy", Level = 2, Alignment = "Neutral-Neutral", IsAccident = false,
                IsSpecial = false,
            },
            new Demons()
            {
                Name = "Abdiel", Race = "Herald", Level = 80, Alignment = "Light-Law", IsAccident = false,
                IsSpecial = true
            }
        };
    }
}