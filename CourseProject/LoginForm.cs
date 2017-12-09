using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
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
      string role = Program.connectionQuery.ExecuteNonQuery("SelectUserRole", CommandType.StoredProcedure, parameterList) as string;
      
      switch(role)
      {
        case "db_client":
          Form1 clientForm = new Form1();
          clientForm.Show();
          this.Hide();
          break;
      }

    }

    private void LoginForm_Load(object sender, EventArgs e)
    {

    }
  }
}
