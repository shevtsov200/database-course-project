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
  public partial class ClientForm : Form
  {
    public ClientForm()
    {
      InitializeComponent();
     
      Program.connectionQuery.OpenConnection();

      SqlParameter[] parameterList =
      {
        new SqlParameter() { ParameterName = "@ReturnValue", SqlDbType = SqlDbType.VarChar, Direction = ParameterDirection.Output, Size = 256}
      };
      usernameLabel.Text = Program.connectionQuery.ExecuteNonQueryWithOutput("SelectUserLogin", CommandType.StoredProcedure, "@ReturnValue", parameterList) as string;


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
        case 3:
          Program.connectionQuery.OpenConnection();
          sourceAccountComboBox.DataSource = Program.connectionQuery.DataSet("SelectUserBankAccountsNumbers");
          sourceAccountComboBox.ValueMember = "account_id";
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

    private void transferFundsButton_Click(object sender, EventArgs e)
    {
      SqlParameter[] parameterList =
      {
        new SqlParameter() {ParameterName =  "@sourceId", SqlDbType = SqlDbType.Int, Value = sourceAccountComboBox.Text},
        new SqlParameter() {ParameterName =  "@destinationId", SqlDbType = SqlDbType.Int, Value = destinationAccountTextBox.Text},
        new SqlParameter() {ParameterName =  "@amount", SqlDbType = SqlDbType.Decimal, Value = amountTextBox.Text}
      };

      Program.connectionQuery.OpenConnection();
      Program.connectionQuery.ExecuteNonQuery("TransferFunds", CommandType.StoredProcedure, parameterList);
      Program.connectionQuery.CloseConnection();
    }

    private void showAccounts_Click(object sender, EventArgs e)
    {

    }

    private void usernameLabel_Click(object sender, EventArgs e)
    {

    }

    private void maskedComboBox1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    private void city_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
  }
}
