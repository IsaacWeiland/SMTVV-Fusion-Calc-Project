using System.Data;
using Dapper;

namespace FusionCalcV3.Models;

public class DemonRepository : IDemonRepo
{
    private readonly IDbConnection _conn;

    public DemonRepository(IDbConnection conn)
    {
        _conn = conn;
    }

    public IEnumerable<Demons> GetAllDemons()
    {
        return _conn.Query<Demons>("SELECT * FROM demons ORDER BY Level;");
    }

    public Demons GetDemon(string name)
    {
        return _conn.QuerySingle<Demons>("SELECT * FROM demons WHERE Name = @name", new { name = name});
    }
}