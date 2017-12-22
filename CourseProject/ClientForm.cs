using System;
using System.Data;
using System.Windows.Forms;
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
      historyGrid.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
      openBankAccountButton.Enabled = false;
    }

    private void showAccounts_SelectedIndexChanged(object sender, EventArgs e)
    {
      switch ((sender as TabControl).SelectedIndex)
      {
        case 0:
        
          break;
        case 1:
          Program.connectionQuery.OpenConnection();
          accountsGrid.DataSource = Program.connectionQuery.DataSet("SelectUserBankAccounts");
          Program.connectionQuery.CloseConnection();
          break;
        case 2:
          Program.connectionQuery.OpenConnection();
          sourceAccountComboBox.DataSource = Program.connectionQuery.DataSet("SelectUserBankAccountsNumbers");
          sourceAccountComboBox.ValueMember = "account_id";
          Program.connectionQuery.CloseConnection();
          transferFundsButton.Enabled = false;
          break;
        case 3:
          Program.connectionQuery.OpenConnection();
          historyGrid.DataSource = Program.connectionQuery.DataSet("SelectUserTransactions");
          Program.connectionQuery.CloseConnection();
          break;
        case 4:
          ratingComboBox.DisplayMember = "Text";
          ratingComboBox.ValueMember = "Value";

          var items = new[] 
          {
            new { Text = "Worst", Value = 1 },
            new { Text = "Bad", Value = 2 },
            new { Text = "Average", Value = 3 },
            new { Text = "Good", Value = 4 },
            new { Text = "Best", Value = 5 }
        };

          ratingComboBox.DataSource = items;

          Program.connectionQuery.OpenConnection();
          managerComboBox.DisplayMember = "name";
          managerComboBox.ValueMember = "employee_id";
          managerComboBox.DataSource = Program.connectionQuery.DataSet("SelectManagers");
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
      string percentage = interestTextBox.Text.Trim('%');
      decimal fraction = Convert.ToDecimal(percentage) / 100;
      SqlParameter[] parameterList =
      {
        new SqlParameter() {ParameterName =  "@Interest", SqlDbType = SqlDbType.Decimal, Value = fraction}
      };
      Program.connectionQuery.OpenConnection();
      Program.connectionQuery.ExecuteNonQuery("InsertBankAccount", CommandType.StoredProcedure, parameterList);
      Program.connectionQuery.CloseConnection();
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

    private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
    {

    }

    private void accountsGrid_CellContentClick(object sender, DataGridViewCellEventArgs e)
    {

    }

    private void button1_Click(object sender, EventArgs e)
    {
      SqlParameter[] parameterList =
{
        new SqlParameter() {ParameterName =  "@ManagerId", SqlDbType = SqlDbType.Int, Value = managerComboBox.SelectedValue},
        new SqlParameter() {ParameterName =  "@FeedbackText", SqlDbType = SqlDbType.NVarChar, Value = feedbackTextBox.Text},
        new SqlParameter() {ParameterName = "@Rating", SqlDbType = SqlDbType.Int, Value = ratingComboBox.SelectedValue}
      };

      Program.connectionQuery.OpenConnection();
      Program.connectionQuery.ExecuteNonQuery("InsertFeedback", CommandType.StoredProcedure, parameterList);
      Program.connectionQuery.CloseConnection();
    }

    private void menuItem2_Click(object sender, EventArgs e)
    {
      Program.loginForm.Show();
      Close();
    }

    private void managerComboBox_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    private void label1_Click_1(object sender, EventArgs e)
    {

    }

    private void sourceAccountComboBox_TextUpdate(object sender, EventArgs e)
    {

    }
    private void updateTransferButton()
    {
      bool isEmpty = string.IsNullOrWhiteSpace(destinationAccountTextBox.Text)
        || string.IsNullOrWhiteSpace(amountTextBox.Text);
      transferFundsButton.Enabled = !isEmpty;
    }

    private void updateCreateAccountButton()
    {
      bool isEmpty = string.IsNullOrWhiteSpace(interestTextBox.Text);
      openBankAccountButton.Enabled = !isEmpty;
    }

    private void destinationAccountTextBox_TextChanged(object sender, EventArgs e)
    {
      updateTransferButton();
    }

    private void amountTextBox_TextChanged(object sender, EventArgs e)
    {
      updateTransferButton();
    }

    private void interestTextBox_TextChanged(object sender, EventArgs e)
    {
      updateCreateAccountButton();
    }
  }
}
