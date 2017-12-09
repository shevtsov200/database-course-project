using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

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
      dbConnection.ConnectionString = connectionString;
    }

    private void LoginForm_Load(object sender, EventArgs e)
    {

    }
  }
}
