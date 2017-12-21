using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

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
        MessageBox.Show(exc.ToString());
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
        MessageBox.Show(exc.ToString());
      }
    }

    public SqlDataReader DataReader(string query)
    {
      SqlCommand cmd = new SqlCommand(query, dbConnection);
      SqlDataReader dr = cmd.ExecuteReader();
      return dr;
    }

    public object DataSet(string query, SqlParameter[] commandParameters = null)
    {
      SqlCommand cmd = new SqlCommand(query, dbConnection);
      cmd.CommandType = CommandType.StoredProcedure;
      SqlDataAdapter dr = new SqlDataAdapter(cmd);
      if (commandParameters != null)
      {
        dr.SelectCommand.Parameters.AddRange(commandParameters);
      }
      DataSet ds = new DataSet();
      dr.Fill(ds);
      object dataum = ds.Tables[0];
      return dataum;
    }
  }
}
