﻿using System;
using System.Data;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace CourseProject
{
  public partial class LoginForm : Form
  {
    public LoginForm()
    {
      InitializeComponent();
    }

    private void textBox1_TextChanged(object sender, EventArgs e)
    {

    }

    private void logInButton_Click(object sender, EventArgs e)
    {
      string connectionString = "Integrated Security = false; Initial Catalog = CourseProject; Data Source = ASUSN551JM;";
      connectionString += " User Id=" + usernameTextBox.Text + "; Password=" + passwordTextBox.Text;
      Program.connectionQuery.connectionString = connectionString;
      Program.connectionQuery.OpenConnection();
      SqlParameter[] parameterList = 
      {
         new SqlParameter() { ParameterName = "@UserName", SqlDbType = SqlDbType.VarChar, Value = usernameTextBox.Text },
         new SqlParameter() { ParameterName = "@ReturnValue", SqlDbType = SqlDbType.VarChar, Direction = ParameterDirection.Output, Size = 256}
      };
      string role = Program.connectionQuery.ExecuteNonQueryWithOutput("SelectUserRole", CommandType.StoredProcedure, "@ReturnValue", parameterList) as string;
      
      switch(role)
      {
        case "db_client":
          ClientForm clientForm = new ClientForm();
          clientForm.Show();
          Hide();
          break;
        case "db_manager":
          ManagerForm managerForm = new ManagerForm();
          managerForm.Show();
          Hide();
          break;
        case "db_HR":
          HumanResourcesForm hrForm = new HumanResourcesForm();
          hrForm.Show();
          Hide();
          break;
      }

    }

    private void LoginForm_Load(object sender, EventArgs e)
    {

    }
  }
}
