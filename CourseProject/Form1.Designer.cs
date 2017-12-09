namespace CourseProject
{
  partial class Form1
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
      this.name = new System.Windows.Forms.TextBox();
      this.address = new System.Windows.Forms.TextBox();
      this.label1 = new System.Windows.Forms.Label();
      this.label2 = new System.Windows.Forms.Label();
      this.label3 = new System.Windows.Forms.Label();
      this.addClientButton = new System.Windows.Forms.Button();
      this.city = new System.Windows.Forms.ComboBox();
      this.pageControl = new System.Windows.Forms.TabControl();
      this.addClientPage = new System.Windows.Forms.TabPage();
      this.passwordTextBox = new System.Windows.Forms.TextBox();
      this.userNameTextBox = new System.Windows.Forms.TextBox();
      this.label10 = new System.Windows.Forms.Label();
      this.label9 = new System.Windows.Forms.Label();
      this.passport = new System.Windows.Forms.MaskedTextBox();
      this.label4 = new System.Windows.Forms.Label();
      this.phoneTextBox = new System.Windows.Forms.MaskedTextBox();
      this.passportLabel = new System.Windows.Forms.Label();
      this.tabPage2 = new System.Windows.Forms.TabPage();
      this.button2 = new System.Windows.Forms.Button();
      this.maskedTextBox1 = new System.Windows.Forms.MaskedTextBox();
      this.label5 = new System.Windows.Forms.Label();
      this.openAccountPassport = new System.Windows.Forms.MaskedTextBox();
      this.openAccountPassportLabel = new System.Windows.Forms.Label();
      this.makeTransactionPage = new System.Windows.Forms.TabPage();
      this.button3 = new System.Windows.Forms.Button();
      this.maskedTextBox4 = new System.Windows.Forms.MaskedTextBox();
      this.maskedTextBox3 = new System.Windows.Forms.MaskedTextBox();
      this.maskedTextBox2 = new System.Windows.Forms.MaskedTextBox();
      this.label8 = new System.Windows.Forms.Label();
      this.label7 = new System.Windows.Forms.Label();
      this.label6 = new System.Windows.Forms.Label();
      this.dbConnection = new System.Data.SqlClient.SqlConnection();
      this.pageControl.SuspendLayout();
      this.addClientPage.SuspendLayout();
      this.tabPage2.SuspendLayout();
      this.makeTransactionPage.SuspendLayout();
      this.SuspendLayout();
      // 
      // name
      // 
      this.name.Location = new System.Drawing.Point(81, 23);
      this.name.Name = "name";
      this.name.Size = new System.Drawing.Size(148, 20);
      this.name.TabIndex = 0;
      // 
      // address
      // 
      this.address.Location = new System.Drawing.Point(81, 106);
      this.address.Name = "address";
      this.address.Size = new System.Drawing.Size(148, 20);
      this.address.TabIndex = 2;
      // 
      // label1
      // 
      this.label1.AutoSize = true;
      this.label1.Location = new System.Drawing.Point(22, 23);
      this.label1.Name = "label1";
      this.label1.Size = new System.Drawing.Size(33, 13);
      this.label1.TabIndex = 3;
      this.label1.Text = "name";
      this.label1.Click += new System.EventHandler(this.label1_Click);
      // 
      // label2
      // 
      this.label2.AutoSize = true;
      this.label2.Location = new System.Drawing.Point(22, 62);
      this.label2.Name = "label2";
      this.label2.Size = new System.Drawing.Size(23, 13);
      this.label2.TabIndex = 4;
      this.label2.Text = "city";
      // 
      // label3
      // 
      this.label3.AutoSize = true;
      this.label3.Location = new System.Drawing.Point(22, 106);
      this.label3.Name = "label3";
      this.label3.Size = new System.Drawing.Size(44, 13);
      this.label3.TabIndex = 5;
      this.label3.Text = "address";
      // 
      // addClientButton
      // 
      this.addClientButton.Location = new System.Drawing.Point(25, 249);
      this.addClientButton.Name = "addClientButton";
      this.addClientButton.Size = new System.Drawing.Size(100, 23);
      this.addClientButton.TabIndex = 6;
      this.addClientButton.Text = "add client";
      this.addClientButton.UseVisualStyleBackColor = true;
      this.addClientButton.Click += new System.EventHandler(this.addClientButton_Click);
      // 
      // city
      // 
      this.city.FormattingEnabled = true;
      this.city.Location = new System.Drawing.Point(81, 62);
      this.city.Name = "city";
      this.city.Size = new System.Drawing.Size(148, 21);
      this.city.TabIndex = 7;
      // 
      // pageControl
      // 
      this.pageControl.Controls.Add(this.addClientPage);
      this.pageControl.Controls.Add(this.tabPage2);
      this.pageControl.Controls.Add(this.makeTransactionPage);
      this.pageControl.Location = new System.Drawing.Point(12, 12);
      this.pageControl.Name = "pageControl";
      this.pageControl.SelectedIndex = 0;
      this.pageControl.Size = new System.Drawing.Size(397, 304);
      this.pageControl.TabIndex = 8;
      // 
      // addClientPage
      // 
      this.addClientPage.Controls.Add(this.passwordTextBox);
      this.addClientPage.Controls.Add(this.userNameTextBox);
      this.addClientPage.Controls.Add(this.label10);
      this.addClientPage.Controls.Add(this.label9);
      this.addClientPage.Controls.Add(this.passport);
      this.addClientPage.Controls.Add(this.label4);
      this.addClientPage.Controls.Add(this.phoneTextBox);
      this.addClientPage.Controls.Add(this.passportLabel);
      this.addClientPage.Controls.Add(this.city);
      this.addClientPage.Controls.Add(this.addClientButton);
      this.addClientPage.Controls.Add(this.label3);
      this.addClientPage.Controls.Add(this.label2);
      this.addClientPage.Controls.Add(this.label1);
      this.addClientPage.Controls.Add(this.address);
      this.addClientPage.Controls.Add(this.name);
      this.addClientPage.Location = new System.Drawing.Point(4, 22);
      this.addClientPage.Name = "addClientPage";
      this.addClientPage.Padding = new System.Windows.Forms.Padding(3);
      this.addClientPage.Size = new System.Drawing.Size(389, 278);
      this.addClientPage.TabIndex = 0;
      this.addClientPage.Text = "add client";
      this.addClientPage.UseVisualStyleBackColor = true;
      this.addClientPage.Click += new System.EventHandler(this.addClientPage_Click);
      // 
      // passwordTextBox
      // 
      this.passwordTextBox.Location = new System.Drawing.Point(297, 62);
      this.passwordTextBox.Name = "passwordTextBox";
      this.passwordTextBox.Size = new System.Drawing.Size(86, 20);
      this.passwordTextBox.TabIndex = 16;
      // 
      // userNameTextBox
      // 
      this.userNameTextBox.Location = new System.Drawing.Point(297, 23);
      this.userNameTextBox.Name = "userNameTextBox";
      this.userNameTextBox.Size = new System.Drawing.Size(86, 20);
      this.userNameTextBox.TabIndex = 15;
      // 
      // label10
      // 
      this.label10.AutoSize = true;
      this.label10.Location = new System.Drawing.Point(235, 62);
      this.label10.Name = "label10";
      this.label10.Size = new System.Drawing.Size(52, 13);
      this.label10.TabIndex = 14;
      this.label10.Text = "password";
      // 
      // label9
      // 
      this.label9.AutoSize = true;
      this.label9.Location = new System.Drawing.Point(235, 23);
      this.label9.Name = "label9";
      this.label9.Size = new System.Drawing.Size(56, 13);
      this.label9.TabIndex = 13;
      this.label9.Text = "user name";
      // 
      // passport
      // 
      this.passport.Location = new System.Drawing.Point(81, 139);
      this.passport.Mask = "00 00 000000";
      this.passport.Name = "passport";
      this.passport.Size = new System.Drawing.Size(83, 20);
      this.passport.TabIndex = 12;
      // 
      // label4
      // 
      this.label4.AutoSize = true;
      this.label4.Location = new System.Drawing.Point(22, 172);
      this.label4.Name = "label4";
      this.label4.Size = new System.Drawing.Size(37, 13);
      this.label4.TabIndex = 11;
      this.label4.Text = "phone";
      // 
      // phoneTextBox
      // 
      this.phoneTextBox.Location = new System.Drawing.Point(81, 172);
      this.phoneTextBox.Mask = "(999) 000-0000";
      this.phoneTextBox.Name = "phoneTextBox";
      this.phoneTextBox.Size = new System.Drawing.Size(84, 20);
      this.phoneTextBox.TabIndex = 10;
      // 
      // passportLabel
      // 
      this.passportLabel.AutoSize = true;
      this.passportLabel.Location = new System.Drawing.Point(22, 142);
      this.passportLabel.Name = "passportLabel";
      this.passportLabel.Size = new System.Drawing.Size(47, 13);
      this.passportLabel.TabIndex = 9;
      this.passportLabel.Text = "passport";
      this.passportLabel.Click += new System.EventHandler(this.label4_Click);
      // 
      // tabPage2
      // 
      this.tabPage2.Controls.Add(this.button2);
      this.tabPage2.Controls.Add(this.maskedTextBox1);
      this.tabPage2.Controls.Add(this.label5);
      this.tabPage2.Controls.Add(this.openAccountPassport);
      this.tabPage2.Controls.Add(this.openAccountPassportLabel);
      this.tabPage2.Location = new System.Drawing.Point(4, 22);
      this.tabPage2.Name = "tabPage2";
      this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
      this.tabPage2.Size = new System.Drawing.Size(389, 278);
      this.tabPage2.TabIndex = 1;
      this.tabPage2.Text = "open account";
      this.tabPage2.UseVisualStyleBackColor = true;
      this.tabPage2.Click += new System.EventHandler(this.tabPage2_Click);
      // 
      // button2
      // 
      this.button2.Location = new System.Drawing.Point(72, 116);
      this.button2.Name = "button2";
      this.button2.Size = new System.Drawing.Size(75, 44);
      this.button2.TabIndex = 9;
      this.button2.Text = "open bank account";
      this.button2.UseVisualStyleBackColor = true;
      this.button2.Click += new System.EventHandler(this.button2_Click);
      // 
      // maskedTextBox1
      // 
      this.maskedTextBox1.Location = new System.Drawing.Point(72, 64);
      this.maskedTextBox1.Mask = "00.00%";
      this.maskedTextBox1.Name = "maskedTextBox1";
      this.maskedTextBox1.Size = new System.Drawing.Size(43, 20);
      this.maskedTextBox1.TabIndex = 8;
      // 
      // label5
      // 
      this.label5.AutoSize = true;
      this.label5.Location = new System.Drawing.Point(21, 61);
      this.label5.Name = "label5";
      this.label5.Size = new System.Drawing.Size(41, 13);
      this.label5.TabIndex = 6;
      this.label5.Text = "interest";
      // 
      // openAccountPassport
      // 
      this.openAccountPassport.Location = new System.Drawing.Point(72, 23);
      this.openAccountPassport.Mask = "00 00 000000";
      this.openAccountPassport.Name = "openAccountPassport";
      this.openAccountPassport.Size = new System.Drawing.Size(74, 20);
      this.openAccountPassport.TabIndex = 3;
      // 
      // openAccountPassportLabel
      // 
      this.openAccountPassportLabel.AutoSize = true;
      this.openAccountPassportLabel.Location = new System.Drawing.Point(18, 23);
      this.openAccountPassportLabel.Name = "openAccountPassportLabel";
      this.openAccountPassportLabel.Size = new System.Drawing.Size(47, 13);
      this.openAccountPassportLabel.TabIndex = 0;
      this.openAccountPassportLabel.Text = "passport";
      // 
      // makeTransactionPage
      // 
      this.makeTransactionPage.Controls.Add(this.button3);
      this.makeTransactionPage.Controls.Add(this.maskedTextBox4);
      this.makeTransactionPage.Controls.Add(this.maskedTextBox3);
      this.makeTransactionPage.Controls.Add(this.maskedTextBox2);
      this.makeTransactionPage.Controls.Add(this.label8);
      this.makeTransactionPage.Controls.Add(this.label7);
      this.makeTransactionPage.Controls.Add(this.label6);
      this.makeTransactionPage.Location = new System.Drawing.Point(4, 22);
      this.makeTransactionPage.Name = "makeTransactionPage";
      this.makeTransactionPage.Size = new System.Drawing.Size(389, 278);
      this.makeTransactionPage.TabIndex = 2;
      this.makeTransactionPage.Text = "make transaction";
      this.makeTransactionPage.UseVisualStyleBackColor = true;
      // 
      // button3
      // 
      this.button3.Location = new System.Drawing.Point(29, 119);
      this.button3.Name = "button3";
      this.button3.Size = new System.Drawing.Size(75, 45);
      this.button3.TabIndex = 8;
      this.button3.Text = "transfer funds";
      this.button3.UseVisualStyleBackColor = true;
      this.button3.Click += new System.EventHandler(this.button3_Click);
      // 
      // maskedTextBox4
      // 
      this.maskedTextBox4.Location = new System.Drawing.Point(154, 25);
      this.maskedTextBox4.Mask = "0000 0000 0000 0000";
      this.maskedTextBox4.Name = "maskedTextBox4";
      this.maskedTextBox4.Size = new System.Drawing.Size(113, 20);
      this.maskedTextBox4.TabIndex = 7;
      // 
      // maskedTextBox3
      // 
      this.maskedTextBox3.Location = new System.Drawing.Point(29, 25);
      this.maskedTextBox3.Mask = "0000 0000 0000 0000";
      this.maskedTextBox3.Name = "maskedTextBox3";
      this.maskedTextBox3.Size = new System.Drawing.Size(119, 20);
      this.maskedTextBox3.TabIndex = 6;
      // 
      // maskedTextBox2
      // 
      this.maskedTextBox2.Location = new System.Drawing.Point(273, 26);
      this.maskedTextBox2.Mask = "0000000000";
      this.maskedTextBox2.Name = "maskedTextBox2";
      this.maskedTextBox2.Size = new System.Drawing.Size(67, 20);
      this.maskedTextBox2.TabIndex = 5;
      // 
      // label8
      // 
      this.label8.AutoSize = true;
      this.label8.Location = new System.Drawing.Point(270, 9);
      this.label8.Name = "label8";
      this.label8.Size = new System.Drawing.Size(42, 13);
      this.label8.TabIndex = 4;
      this.label8.Text = "amount";
      // 
      // label7
      // 
      this.label7.AutoSize = true;
      this.label7.Location = new System.Drawing.Point(151, 9);
      this.label7.Name = "label7";
      this.label7.Size = new System.Drawing.Size(100, 13);
      this.label7.TabIndex = 3;
      this.label7.Text = "destination account";
      // 
      // label6
      // 
      this.label6.AutoSize = true;
      this.label6.Location = new System.Drawing.Point(26, 10);
      this.label6.Name = "label6";
      this.label6.Size = new System.Drawing.Size(81, 13);
      this.label6.TabIndex = 2;
      this.label6.Text = "source account";
      // 
      // dbConnection
      // 
      this.dbConnection.FireInfoMessageEventOnUserErrors = false;
      // 
      // Form1
      // 
      this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
      this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
      this.ClientSize = new System.Drawing.Size(485, 347);
      this.Controls.Add(this.pageControl);
      this.Name = "Form1";
      this.Text = "Form1";
      this.Load += new System.EventHandler(this.Form1_Load);
      this.pageControl.ResumeLayout(false);
      this.addClientPage.ResumeLayout(false);
      this.addClientPage.PerformLayout();
      this.tabPage2.ResumeLayout(false);
      this.tabPage2.PerformLayout();
      this.makeTransactionPage.ResumeLayout(false);
      this.makeTransactionPage.PerformLayout();
      this.ResumeLayout(false);

    }

    #endregion

    private System.Windows.Forms.TextBox name;
    private System.Windows.Forms.TextBox address;
    private System.Windows.Forms.Label label1;
    private System.Windows.Forms.Label label2;
    private System.Windows.Forms.Label label3;
    private System.Windows.Forms.Button addClientButton;
    private System.Windows.Forms.ComboBox city;
    private System.Windows.Forms.TabControl pageControl;
    private System.Windows.Forms.TabPage addClientPage;
    private System.Windows.Forms.TabPage tabPage2;
    private System.Windows.Forms.Label passportLabel;
    private System.Windows.Forms.Label openAccountPassportLabel;
    private System.Windows.Forms.Label label4;
    private System.Windows.Forms.MaskedTextBox phoneTextBox;
    private System.Windows.Forms.MaskedTextBox passport;
    private System.Windows.Forms.MaskedTextBox openAccountPassport;
    private System.Windows.Forms.MaskedTextBox maskedTextBox1;
    private System.Windows.Forms.Label label5;
    private System.Windows.Forms.Button button2;
    private System.Windows.Forms.TabPage makeTransactionPage;
    private System.Windows.Forms.MaskedTextBox maskedTextBox2;
    private System.Windows.Forms.Label label8;
    private System.Windows.Forms.Label label7;
    private System.Windows.Forms.Label label6;
    private System.Windows.Forms.Button button3;
    private System.Windows.Forms.MaskedTextBox maskedTextBox4;
    private System.Windows.Forms.MaskedTextBox maskedTextBox3;
    private System.Windows.Forms.TextBox passwordTextBox;
    private System.Windows.Forms.TextBox userNameTextBox;
    private System.Windows.Forms.Label label10;
    private System.Windows.Forms.Label label9;
    private System.Data.SqlClient.SqlConnection dbConnection;
  }
}

