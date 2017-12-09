namespace CourseProject
{
  partial class LoginForm
  {
    /// <summary>
    /// Required designer variable.
    /// </summary>
    private System.ComponentModel.IContainer components = null;

    /// <summary>
    /// Clean up any resources being used.
    /// </summary>
    /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
    protected override void Dispose(bool disposing)
    {
      if (disposing && (components != null))
      {
        components.Dispose();
      }
      base.Dispose(disposing);
    }

    #region Windows Form Designer generated code

    /// <summary>
    /// Required method for Designer support - do not modify
    /// the contents of this method with the code editor.
    /// </summary>
    private void InitializeComponent()
    {
      this.usernameTextBox = new System.Windows.Forms.TextBox();
      this.passwordTextBox = new System.Windows.Forms.TextBox();
      this.label1 = new System.Windows.Forms.Label();
      this.label2 = new System.Windows.Forms.Label();
      this.logInButton = new System.Windows.Forms.Button();
      this.dbConnection = new System.Data.SqlClient.SqlConnection();
      this.SuspendLayout();
      // 
      // usernameTextBox
      // 
      this.usernameTextBox.Location = new System.Drawing.Point(93, 29);
      this.usernameTextBox.Name = "usernameTextBox";
      this.usernameTextBox.Size = new System.Drawing.Size(100, 20);
      this.usernameTextBox.TabIndex = 0;
      this.usernameTextBox.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
      // 
      // passwordTextBox
      // 
      this.passwordTextBox.Location = new System.Drawing.Point(93, 76);
      this.passwordTextBox.Name = "passwordTextBox";
      this.passwordTextBox.PasswordChar = '*';
      this.passwordTextBox.Size = new System.Drawing.Size(100, 20);
      this.passwordTextBox.TabIndex = 1;
      // 
      // label1
      // 
      this.label1.AutoSize = true;
      this.label1.Location = new System.Drawing.Point(33, 29);
      this.label1.Name = "label1";
      this.label1.Size = new System.Drawing.Size(53, 13);
      this.label1.TabIndex = 2;
      this.label1.Text = "username";
      // 
      // label2
      // 
      this.label2.AutoSize = true;
      this.label2.Location = new System.Drawing.Point(33, 76);
      this.label2.Name = "label2";
      this.label2.Size = new System.Drawing.Size(52, 13);
      this.label2.TabIndex = 3;
      this.label2.Text = "password";
      // 
      // logInButton
      // 
      this.logInButton.Location = new System.Drawing.Point(93, 139);
      this.logInButton.Name = "logInButton";
      this.logInButton.Size = new System.Drawing.Size(100, 23);
      this.logInButton.TabIndex = 4;
      this.logInButton.Text = "log in";
      this.logInButton.UseVisualStyleBackColor = true;
      this.logInButton.Click += new System.EventHandler(this.logInButton_Click);
      // 
      // dbConnection
      // 
      this.dbConnection.FireInfoMessageEventOnUserErrors = false;
      // 
      // LoginForm
      // 
      this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
      this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
      this.ClientSize = new System.Drawing.Size(284, 261);
      this.Controls.Add(this.logInButton);
      this.Controls.Add(this.label2);
      this.Controls.Add(this.label1);
      this.Controls.Add(this.passwordTextBox);
      this.Controls.Add(this.usernameTextBox);
      this.Name = "LoginForm";
      this.Text = "LoginForm";
      this.Load += new System.EventHandler(this.LoginForm_Load);
      this.ResumeLayout(false);
      this.PerformLayout();

    }

    #endregion

    private System.Windows.Forms.TextBox usernameTextBox;
    private System.Windows.Forms.TextBox passwordTextBox;
    private System.Windows.Forms.Label label1;
    private System.Windows.Forms.Label label2;
    private System.Data.SqlClient.SqlConnection dbConnection;
    private System.Windows.Forms.Button logInButton;
  }
}