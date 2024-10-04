using System.Data;
using Dapper;

namespace FusionCalcV3.Models;

public static class CalculateLevel
{
    public static int Level(int dem1, int dem2)
    {
        var result = (dem1 + dem2) / 2;
        if (result > 99)
        {
            result = 99;
        }

        if (result < 1)
        {
            result = 1;
        }
        return result;
    }
}