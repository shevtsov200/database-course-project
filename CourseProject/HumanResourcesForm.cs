using System;
using System.Data;
using System.Windows.Forms;
using System.Data.SqlClient;


namespace CourseProject
{
  public partial class HumanResourcesForm : Form
  {
    public HumanResourcesForm()
    {
      InitializeComponent();

      Program.connectionQuery.OpenConnection();

      cityComboBox.DisplayMember = "name";
      cityComboBox.ValueMember = "city_id";
      cityComboBox.DataSource = Program.connectionQuery.DataSet("SelectCities");

      positionComboBox.DisplayMember = "name";
      positionComboBox.ValueMember = "position_id";
      positionComboBox.DataSource = Program.connectionQuery.DataSet("SelectPositions");

      Program.connectionQuery.CloseConnection();
      addEmployeeButton.Enabled = false;
    }

    private void CityComboBox_SelectedIndexChanged(object sender, EventArgs e)
    {
      populateWithBanksFromCity();
    }

    private void populateWithBanksFromCity()
    {
      bankComboBox.DataSource = null;
      Program.connectionQuery.OpenConnection();
      SqlParameter[] commandParameters =
      {
          new SqlParameter() { ParameterName =  "@cityId", SqlDbType = SqlDbType.Int, Value = cityComboBox.SelectedValue}
      };
      bankComboBox.DisplayMember = "name";
      bankComboBox.ValueMember = "bank_id";
      bankComboBox.DataSource = Program.connectionQuery.DataSet("SelectBanksWhereCity", commandParameters);

      Program.connectionQuery.CloseConnection();
    }

    private void addEmployeeButton_Click(object sender, EventArgs e)
    {
      Program.connectionQuery.OpenConnection();


      SqlParameter[] commandParameters =
      {
        new SqlParameter() {ParameterName =  "@EmployeeName", SqlDbType = SqlDbType.NVarChar, Value = nameTextBox.Text},
        new SqlParameter() {ParameterName = "@BankId", SqlDbType = SqlDbType.Int, Value = bankComboBox.SelectedValue},
        new SqlParameter() {ParameterName =  "@EmployeeAddress", SqlDbType = SqlDbType.NVarChar, Value = addressTextBox.Text},
        new SqlParameter() {ParameterName =  "@PassportNumber", SqlDbType = SqlDbType.NVarChar, Value = passportTextBox.Text},
        new SqlParameter() {ParameterName =  "@Salary", SqlDbType = SqlDbType.Decimal, Value = salaryTextBox.Text},
        new SqlParameter() {ParameterName =  "@PhoneNumber", SqlDbType = SqlDbType.VarChar, Value = phoneTextBox.Text},
        new SqlParameter() {ParameterName =  "@UserName", SqlDbType = SqlDbType.VarChar, Value = userNameTextBox.Text},
        new SqlParameter() {ParameterName =  "@Password", SqlDbType = SqlDbType.VarChar, Value = passwordTextBox.Text},
        new SqlParameter() {ParameterName = "@PositionId", SqlDbType = SqlDbType.Int, Value = positionComboBox.SelectedValue},
      };
      Program.connectionQuery.ExecuteNonQuery("InsertEmployee", CommandType.StoredProcedure, commandParameters);

      Program.connectionQuery.CloseConnection();
    }

    private void label5_Click(object sender, EventArgs e)
    {

    }

    private void salaryTextBox_MaskInputRejected(object sender, MaskInputRejectedEventArgs e)
    {

    }

    private void label6_Click(object sender, EventArgs e)
    {

    }

    private void logoutMenu_Click(object sender, EventArgs e)
    {
      Program.loginForm.Show();
      Close();
    }

    private void employeeComboBox_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    private void button1_Click(object sender, EventArgs e)
    {
      SqlParameter[] parameterList =
      {
        new SqlParameter() {ParameterName =  "@EmployeeId", SqlDbType = SqlDbType.Int, Value = employeeComboBox.SelectedValue}
      };
      Program.connectionQuery.OpenConnection();
      Program.connectionQuery.ExecuteNonQuery("DeleteEmployee", CommandType.StoredProcedure, parameterList);
      Program.connectionQuery.CloseConnection();

      repopulateEmployeeComboBox();
    }

    private void repopulateEmployeeComboBox()
    {
      Program.connectionQuery.OpenConnection();
      employeeComboBox.DisplayMember = "name";
      employeeComboBox.ValueMember = "employee_id";
      employeeComboBox.DataSource = Program.connectionQuery.DataSet("SelectEmployees");
      Program.connectionQuery.CloseConnection();
    }

    private void tabControl1_SelectedIndexChanged(object sender, EventArgs e)
    {
      switch ((sender as TabControl).SelectedIndex)
      {
        case 1:
          Program.connectionQuery.OpenConnection();
          ratingGrid.DataSource = Program.connectionQuery.DataSet("SelectManagersRating");
          ratingGrid.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
          Program.connectionQuery.CloseConnection();
          break;
        case 2:
          repopulateEmployeeComboBox();
          break;
      }
    }

    private void updateAddEmployeeButton()
    {
      bool isEmpty = string.IsNullOrEmpty(nameTextBox.Text)
        || !salaryTextBox.MaskFull
        || string.IsNullOrEmpty(userNameTextBox.Text)
        || !passportTextBox.MaskFull
        || string.IsNullOrEmpty(addressTextBox.Text)
        || !phoneTextBox.MaskFull
        || string.IsNullOrEmpty(passwordTextBox.Text);
      addEmployeeButton.Enabled = !isEmpty;
    }

    private void nameTextBox_TextChanged(object sender, EventArgs e)
    {
      updateAddEmployeeButton();
    }

    private void salaryTextBox_TextChanged(object sender, EventArgs e)
    {
      updateAddEmployeeButton();
    }

    private void userNameTextBox_TextChanged(object sender, EventArgs e)
    {
      updateAddEmployeeButton();
    }

    private void passwordTextBox_TextChanged(object sender, EventArgs e)
    {
      updateAddEmployeeButton();
    }

    private void addressTextBox_TextChanged(object sender, EventArgs e)
    {
      updateAddEmployeeButton();
    }

    private void passportTextBox_TextChanged(object sender, EventArgs e)
    {
      updateAddEmployeeButton();
    }

    private void phoneTextBox_TextChanged(object sender, EventArgs e)
    {
      updateAddEmployeeButton();
    }
  }
}
