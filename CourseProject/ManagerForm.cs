using System;
using System.Data;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace CourseProject
{
  public partial class ManagerForm : Form
  {
    public ManagerForm()
    {
      InitializeComponent();

      Program.connectionQuery.OpenConnection();

      city.DisplayMember = "name";
      city.ValueMember = "city_id";
      city.DataSource = Program.connectionQuery.DataSet("SelectCities");

      feedbackGrid.DataSource = Program.connectionQuery.DataSet("SelectCurrentManagerFeedback");

      Program.connectionQuery.CloseConnection();

      feedbackGrid.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
      updateAddClientButton();
    }

    private void addEmployeePage_Click(object sender, EventArgs e)
    {

    }

    private void label4_Click(object sender, EventArgs e)
    {

    }

    private void addClientButton_Click(object sender, EventArgs e)
    {

    }

    private void label1_Click(object sender, EventArgs e)
    {

    }

    private void addClientButton_Click_1(object sender, EventArgs e)
    {
      Program.connectionQuery.OpenConnection();

      SqlParameter[] parameterList =
      {
        new SqlParameter() {ParameterName =  "@ClientName", SqlDbType = SqlDbType.NVarChar, Value = name.Text},
        new SqlParameter() {ParameterName =  "@ClientCityId", SqlDbType = SqlDbType.Int, Value = city.SelectedValue },
        new SqlParameter() {ParameterName =  "@ClientAddress", SqlDbType = SqlDbType.NVarChar, Value = address.Text},
        new SqlParameter() {ParameterName =  "@PassportNumber", SqlDbType = SqlDbType.NVarChar, Value = passport.Text},
        new SqlParameter() {ParameterName =  "@PhoneNumber", SqlDbType = SqlDbType.VarChar, Value = phoneTextBox.Text},
        new SqlParameter() {ParameterName =  "@UserName", SqlDbType = SqlDbType.VarChar, Value = userNameTextBox.Text},
        new SqlParameter() {ParameterName =  "@Password", SqlDbType = SqlDbType.VarChar, Value = passwordTextBox.Text}
      };
      Program.connectionQuery.ExecuteNonQuery("InsertClient", CommandType.StoredProcedure, parameterList);

      Program.connectionQuery.CloseConnection();
    }

    private void city_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    private void ManagerForm_Load(object sender, EventArgs e)
    {

    }

    private void feedbackGrid_SelectionChanged(object sender, EventArgs e)
    {
      if (feedbackGrid.CurrentCell!= null)
      {
        DataGridViewRow row = feedbackGrid.Rows[feedbackGrid.CurrentCell.RowIndex];
        clientTextBox.Text = row.Cells["name"].Value.ToString();
        dateTextBox.Text = row.Cells["feedback_date"].Value.ToString();
        feedbackTextBox.Text = row.Cells["feedback_text"].Value.ToString();
        ratingTextBox.Text = row.Cells["rating"].Value.ToString();
      }
    }

    private void logoutMenu_Click(object sender, EventArgs e)
    {
      Program.loginForm.Show();
      Close();
    }

    private void updateAddClientButton()
    {
      bool isEmpty = string.IsNullOrEmpty(name.Text)
        || string.IsNullOrEmpty(address.Text)
        || !passport.MaskFull
        || !phoneTextBox.MaskFull
        || string.IsNullOrEmpty(userNameTextBox.Text)
        || string.IsNullOrEmpty(passwordTextBox.Text);

      addClientButton.Enabled = !isEmpty;
    }

    private void name_TextChanged(object sender, EventArgs e)
    {
      updateAddClientButton();
    }

    private void address_TextChanged(object sender, EventArgs e)
    {
      updateAddClientButton();
    }

    private void passport_TextChanged(object sender, EventArgs e)
    {
      updateAddClientButton();
    }

    private void phoneTextBox_TextChanged(object sender, EventArgs e)
    {
      updateAddClientButton();
    }

    private void userNameTextBox_TextChanged(object sender, EventArgs e)
    {
      updateAddClientButton();
    }

    private void passwordTextBox_TextChanged(object sender, EventArgs e)
    {
      updateAddClientButton();
    }

    private void maskedComboBox1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    private void tabControl1_SelectedIndexChanged(object sender, EventArgs e)
    {
      switch ((sender as TabControl).SelectedIndex)
      {
        case 2:
          updateCityComboBox.DisplayMember = "name";
          updateCityComboBox.ValueMember = "city_id";
          updateCityComboBox.DataSource = Program.connectionQuery.DataSet("SelectCities");

          updateNameComboBox.DisplayMember = "name";
          updateNameComboBox.ValueMember = "client_id";
          updateNameComboBox.DataSource = Program.connectionQuery.DataSet("SelectClients");

          updateClientFields();
          break;
      }
    }

    private void updateTextBox_TextChanged(object sender, EventArgs e)
    {
      updateUpdateClientButton();
    }

    private void updateUpdateClientButton()
    {
      bool isEmpty = string.IsNullOrEmpty(updateNameComboBox.Text)
        || string.IsNullOrEmpty(updateAddressTextBox.Text)
        || !updatePassportTextBox.MaskFull
        || !updatePhoneTextBox.MaskFull
        || string.IsNullOrEmpty(updateUsernameTextBox.Text)
        || string.IsNullOrEmpty(updatePasswordTextBox.Text);

      updateClientButton.Enabled = !isEmpty;
    }

    private void updateClientButton_Click(object sender, EventArgs e)
    {
      Program.connectionQuery.OpenConnection();

      SqlParameter[] parameterList =
      {
        new SqlParameter() {ParameterName =  "@ClientId", SqlDbType = SqlDbType.Int, Value = updateNameComboBox.SelectedValue},
        new SqlParameter() {ParameterName =  "@ClientName", SqlDbType = SqlDbType.NVarChar, Value = updateNameComboBox.Text},
        new SqlParameter() {ParameterName =  "@ClientCityId", SqlDbType = SqlDbType.Int, Value = updateCityComboBox.SelectedValue },
        new SqlParameter() {ParameterName =  "@ClientAddress", SqlDbType = SqlDbType.NVarChar, Value = updateAddressTextBox.Text},
        new SqlParameter() {ParameterName =  "@PassportNumber", SqlDbType = SqlDbType.NVarChar, Value = updatePassportTextBox.Text},
        new SqlParameter() {ParameterName =  "@PhoneNumber", SqlDbType = SqlDbType.VarChar, Value = updatePhoneTextBox.Text},
        new SqlParameter() {ParameterName =  "@UserName", SqlDbType = SqlDbType.VarChar, Value = updateUsernameTextBox.Text},
        new SqlParameter() {ParameterName =  "@Password", SqlDbType = SqlDbType.VarChar, Value = updatePasswordTextBox.Text}
      };
      Program.connectionQuery.ExecuteNonQuery("UpdateClient", CommandType.StoredProcedure, parameterList);

      Program.connectionQuery.CloseConnection();
    }

    private void updateClientFields()
    {
      Program.connectionQuery.OpenConnection();
      SqlParameter[] parameterList =
      {
        new SqlParameter() {ParameterName =  "@ClientId", SqlDbType = SqlDbType.Int, Value = updateNameComboBox.SelectedValue}
      };

      SqlDataReader reader = Program.connectionQuery.DataReader("SelectClientInformation", parameterList);
      if (reader.Read())
      {
        updateNameComboBox.Text = reader["name"].ToString();
        updateCityComboBox.SelectedValue = reader["city_id"].ToString();
        updateAddressTextBox.Text = reader["client_address"].ToString();
        updatePhoneTextBox.Text = reader["phone_number"].ToString();
        updateUsernameTextBox.Text = reader["username"].ToString();
        updatePasswordTextBox.Text = reader["client_password"].ToString();
        updatePassportTextBox.Text = reader["passport_number"].ToString();
      }
      Program.connectionQuery.CloseConnection();
    }

    private void updateNameComboBox_SelectedIndexChanged(object sender, EventArgs e)
    {
      updateClientFields();
    }
  }
}
