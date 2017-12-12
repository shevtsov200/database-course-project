using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace CourseProject
{
  class ConnectionQuery
  {
    public string connectionString = "";
    SqlConnection dbConnection;

    public void OpenConnection()
    {
      dbConnection = new SqlConnection(connectionString);
      dbConnection.Open();
    }

    public void CloseConnection()
    {
      dbConnection.Close();
    }

    public void ExecuteQueries(string query)
    {
      SqlCommand cmd = new SqlCommand(query, dbConnection);
      cmd.ExecuteNonQuery();
    }

    public object ExecuteNonQueryWithOutput(string commandText, CommandType commandType,
      string outputParameterName, params SqlParameter[] commandParameters)
    {
      SqlCommand cmd = new SqlCommand(commandText, dbConnection);
      cmd.CommandType = commandType;
      cmd.Parameters.AddRange(commandParameters);

      try
      {
        cmd.ExecuteNonQuery();
        return cmd.Parameters[outputParameterName].Value;
      }
      catch (SqlException exc)
      {
        Console.WriteLine(exc.ToString());
      }
      return null;
    }

    public void ExecuteNonQuery(string commandText, CommandType commandType, 
      params SqlParameter[] commandParameters)
    {
      SqlCommand cmd = new SqlCommand(commandText, dbConnection);
      cmd.CommandType = commandType;
      cmd.Parameters.AddRange(commandParameters);

      try
      {
        cmd.ExecuteNonQuery();
      }
      catch (SqlException exc)
      {
        Console.WriteLine(exc.ToString());
      }
    }

    public SqlDataReader DataReader(string query)
    {
      SqlCommand cmd = new SqlCommand(query, dbConnection);
      SqlDataReader dr = cmd.ExecuteReader();
      return dr;
    }

    public object DataSet(string query)
    {
      SqlDataAdapter dr = new SqlDataAdapter(query, dbConnection);
      DataSet ds = new DataSet();
      dr.Fill(ds);
      object dataum = ds.Tables[0];
      return dataum;
    }
  }
}
