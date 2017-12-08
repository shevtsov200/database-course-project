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
      insertClientCmd.Parameters.Add("@PhoneNumber", SqlDbType.VarChar).Value = phoneTextBox.Text;

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

    private void tabPage2_Click(object sender, EventArgs e)
    {

    }

    private void textBox1_TextChanged(object sender, EventArgs e)
    {

    }

    private void maskedTextBox1_MaskInputRejected(object sender, MaskInputRejectedEventArgs e)
    {

    }

    private void button2_Click(object sender, EventArgs e)
    {
      if (checkIfClientExists(openAccountPassport.Text))
      {
        SqlCommand openAccountCmd = new SqlCommand("InsertBankAccountUsingPassport", dbConnection);
        openAccountCmd.CommandType = CommandType.StoredProcedure;
        openAccountCmd.Parameters.Add("@PassportNumber", SqlDbType.NChar).Value = openAccountPassport.Text;

        string percentage = maskedTextBox1.Text.Trim('%');
        decimal fraction = Convert.ToDecimal(percentage) / 100;
        openAccountCmd.Parameters.Add("@Interest", SqlDbType.Decimal).Value = fraction;

        try
        {
          openAccountCmd.ExecuteNonQuery();
        }
        catch (SqlException exc)
        {
          MessageBox.Show(exc.ToString());
        }
      }
      
    }

    private bool checkIfClientExists(string passportNumber)
    {
      SqlCommand checkClientCmd = new SqlCommand("SelectClientsWithPassport", dbConnection);
      checkClientCmd.CommandType = CommandType.StoredProcedure;
      checkClientCmd.Parameters.Add("@PassportNumber", SqlDbType.NChar).Value = passportNumber;

      int clientCount = (int)checkClientCmd.ExecuteScalar();
      return (clientCount > 0);
    }
  }
}
