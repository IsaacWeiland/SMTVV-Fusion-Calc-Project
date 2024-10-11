using System.Data;
using Dapper;

namespace FusionCalcV3.Models;

public static class CalculateLevel
{
    public static int Level(float dem1, float dem2)
    {
        int result = (int)Math.Ceiling((dem1 + dem2) / 2);
        if (result > 99)
        {
            result = 99;
            return result;
        }
        if (result < 1)
        {
            result = 1;
            return result;
        }
        return result + 1;
    }
}