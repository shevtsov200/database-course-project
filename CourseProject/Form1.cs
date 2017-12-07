using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.OleDb;
using System.Data.SqlClient;

namespace CourseProject
{
  public partial class Form1 : Form
  {
    public Form1()
    {
      InitializeComponent();

      dbConnection.Open();

      String strSQL = "SELECT city_id, name FROM Cities";
      SqlDataAdapter adapter = new SqlDataAdapter(new SqlCommand(strSQL, dbConnection));

      DataSet ds = new DataSet();
      adapter.Fill(ds);
      city.DataSource = ds.Tables[0];
      city.DisplayMember = "name";
      city.ValueMember = "city_id";
    }

    private void label1_Click(object sender, EventArgs e)
    {

    }

    private void Form1_Load(object sender, EventArgs e)
    {

    }

    private void button1_Click(object sender, EventArgs e)
    {
      SqlCommand insertClientCmd = new SqlCommand("InsertClient", dbConnection);
      insertClientCmd.CommandType = CommandType.StoredProcedure;
      insertClientCmd.Parameters.Add("@ClientName", SqlDbType.NChar).Value = name.Text;
      insertClientCmd.Parameters.Add("@ClientCityId", SqlDbType.Int).Value = city.SelectedValue;
      insertClientCmd.Parameters.Add("@ClientAddress", SqlDbType.NChar).Value = address.Text;
      insertClientCmd.Parameters.Add("@PassportNumber", SqlDbType.NChar).Value = passport.Text;

      try
      {
        insertClientCmd.ExecuteNonQuery();
      }
      catch (SqlException exc)
      {
        MessageBox.Show(exc.ToString());
      }
    }

    private void sqlConnection1_InfoMessage(object sender, SqlInfoMessageEventArgs e)
    {

    }

    private void label4_Click(object sender, EventArgs e)
    {

    }

    private void addClientPage_Click(object sender, EventArgs e)
    {

    }
  }
}
