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

    public object ExecuteNonQuery(string commandText, CommandType commandType, 
      params SqlParameter[] commandParameters)
    {
      SqlCommand cmd = new SqlCommand(commandText, dbConnection);
      cmd.CommandType = commandType;
      cmd.Parameters.AddRange(commandParameters);

      try
      {
        cmd.ExecuteNonQuery();

        return cmd.Parameters["@ReturnValue"].Value;
      }
      catch (SqlException exc)
      {
        Console.WriteLine(exc.ToString());
      }
      return null;
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
