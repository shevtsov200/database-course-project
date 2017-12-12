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
     
      Program.connectionQuery.OpenConnection();
      String strSQL = "SELECT city_id, name FROM Cities";

      city.DataSource = Program.connectionQuery.DataSet(strSQL);
      city.DisplayMember = "name";
      city.ValueMember = "city_id";

      SqlParameter[] parameterList =
      {
        new SqlParameter() { ParameterName = "@ReturnValue", SqlDbType = SqlDbType.VarChar, Direction = ParameterDirection.Output, Size = 256}
      };
      usernameLabel.Text = Program.connectionQuery.ExecuteNonQuery("SelectUserLogin", CommandType.StoredProcedure, parameterList) as string;


      Program.connectionQuery.CloseConnection();

      pageControl.SelectedIndexChanged += new EventHandler(showAccounts_SelectedIndexChanged);

      accountsGrid.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
    }

    private void showAccounts_SelectedIndexChanged(object sender, EventArgs e)
    {
      switch ((sender as TabControl).SelectedIndex)
      {
        case 2:
          Program.connectionQuery.OpenConnection();
          accountsGrid.DataSource = Program.connectionQuery.DataSet("SelectUserBankAccounts");
          Program.connectionQuery.CloseConnection();
          break;
      }
    }

    private void label1_Click(object sender, EventArgs e)
    {

    }

    private void Form1_Load(object sender, EventArgs e)
    {

    }

    private void addClientButton_Click(object sender, EventArgs e)
    {
      Program.connectionQuery.OpenConnection();

      SqlParameter[] parameterList =
      {
        new SqlParameter() {ParameterName =  "@ClientName", SqlDbType = SqlDbType.NVarChar, Value = name.Text},
        new SqlParameter() {ParameterName =  "@ClientCityId", SqlDbType = SqlDbType.Int, Value = city.SelectedValue},
        new SqlParameter() {ParameterName =  "@ClientAddress", SqlDbType = SqlDbType.NVarChar, Value = address.Text},
        new SqlParameter() {ParameterName =  "@PassportNumber", SqlDbType = SqlDbType.NVarChar, Value = passport.Text},
        new SqlParameter() {ParameterName =  "@PhoneNumber", SqlDbType = SqlDbType.VarChar, Value = phoneTextBox.Text},
        new SqlParameter() {ParameterName =  "@UserName", SqlDbType = SqlDbType.VarChar, Value = userNameTextBox.Text},
        new SqlParameter() {ParameterName =  "@Password", SqlDbType = SqlDbType.VarChar, Value = passwordTextBox.Text}
      };
      Program.connectionQuery.ExecuteNonQuery("InsertClient", CommandType.StoredProcedure, parameterList);

      Program.connectionQuery.CloseConnection();
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
        openAccountCmd.Parameters.Add("@PassportNumber", SqlDbType.NVarChar).Value = openAccountPassport.Text;

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
      checkClientCmd.Parameters.Add("@PassportNumber", SqlDbType.NVarChar).Value = passportNumber;

      int clientCount = (int)checkClientCmd.ExecuteScalar();
      return (clientCount > 0);
    }

    private void button3_Click(object sender, EventArgs e)
    {

    }

    private void showAccounts_Click(object sender, EventArgs e)
    {

    }

    private void usernameLabel_Click(object sender, EventArgs e)
    {

    }
  }
}
