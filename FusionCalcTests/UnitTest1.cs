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
    private readonly Mock<DemonRepository> _mockDemon;
    private readonly DemonController _demonController;
    public UnitTest1()
    {
        _mockRepo = new Mock<IDemonRepo>();
        _mockDemon = new Mock<DemonRepository>();
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

    #region LevelTests
    [Theory]
    [InlineData(28, 24, 27)]
    [InlineData(49, 12, 32)]
    [InlineData(96, 2, 50)]
    [InlineData(96,95, 97)]
    [InlineData(2,1, 3)]
    [InlineData(50,50,51)]
    
    public void TestGetLevel(int input1, int input2, int expected)
    {
        var actual = CalculateLevel.Level(input1, input2);
        Assert.Equal(expected, actual);
    }
    #endregion

    #region GetRaceTests
    [Theory]
    [InlineData("Megami","Fairy","Wargod")]
    [InlineData("Lady","UMA","Holy")]
    [InlineData("Deity","Night","Lady")]
    [InlineData("Tyrant","Vile","Jaki")]
    [InlineData("Fairy","Fiend","Jaki")]
    [InlineData("Night","Divine","Megami")]
    [InlineData("Night","Raptor","Megami")]
    [InlineData("Beast","Divine","Brute")]
    [InlineData("Drake","Jaki","Brute")]
    [InlineData("Jirae","Fiend","Night")]
    [InlineData("Yoma","Snake","Night")]
    [InlineData("Wilder","Fallen","Raptor")]
    [InlineData("Jirae","Haunt","Femme")]
    [InlineData("Megami","Kunitsu","Femme")]
    [InlineData("Holy","Wargod","Kishin")]
    [InlineData("Brute","Enigma","Kishin")]
    [InlineData("Vile","Jaki","Haunt")]
    public void TestRaceGrab(string input1, string input2, string expected)
    {
        _mockRepo.Setup(repo => repo.GetRace(input1, input2)).Returns(expected);
    }
    #endregion
    
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