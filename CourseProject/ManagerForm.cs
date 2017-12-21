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
  }
}
