﻿namespace CourseProject
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
      this.showAccounts = new System.Windows.Forms.TabPage();
      this.accountsGrid = new System.Windows.Forms.DataGridView();
      this.makeTransactionPage = new System.Windows.Forms.TabPage();
      this.transferFundsButton = new System.Windows.Forms.Button();
      this.amountTextBox = new System.Windows.Forms.MaskedTextBox();
      this.label8 = new System.Windows.Forms.Label();
      this.label7 = new System.Windows.Forms.Label();
      this.label6 = new System.Windows.Forms.Label();
      this.dbConnection = new System.Data.SqlClient.SqlConnection();
      this.label11 = new System.Windows.Forms.Label();
      this.usernameLabel = new System.Windows.Forms.Label();
      this.destinationAccountTextBox = new System.Windows.Forms.MaskedTextBox();
      this.sourceAccountComboBox = new System.Windows.Forms.ComboBox();
      this.pageControl.SuspendLayout();
      this.addClientPage.SuspendLayout();
      this.tabPage2.SuspendLayout();
      this.showAccounts.SuspendLayout();
      ((System.ComponentModel.ISupportInitialize)(this.accountsGrid)).BeginInit();
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
      this.pageControl.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
      this.pageControl.Controls.Add(this.addClientPage);
      this.pageControl.Controls.Add(this.tabPage2);
      this.pageControl.Controls.Add(this.showAccounts);
      this.pageControl.Controls.Add(this.makeTransactionPage);
      this.pageControl.Location = new System.Drawing.Point(12, 12);
      this.pageControl.Name = "pageControl";
      this.pageControl.SelectedIndex = 0;
      this.pageControl.Size = new System.Drawing.Size(461, 308);
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
      this.addClientPage.Size = new System.Drawing.Size(453, 282);
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
      this.tabPage2.Size = new System.Drawing.Size(453, 282);
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
      // showAccounts
      // 
      this.showAccounts.Controls.Add(this.accountsGrid);
      this.showAccounts.Location = new System.Drawing.Point(4, 22);
      this.showAccounts.Name = "showAccounts";
      this.showAccounts.Size = new System.Drawing.Size(453, 282);
      this.showAccounts.TabIndex = 3;
      this.showAccounts.Text = "show accounts";
      this.showAccounts.UseVisualStyleBackColor = true;
      this.showAccounts.Click += new System.EventHandler(this.showAccounts_Click);
      // 
      // accountsGrid
      // 
      this.accountsGrid.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
      this.accountsGrid.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
      this.accountsGrid.Location = new System.Drawing.Point(14, 15);
      this.accountsGrid.Name = "accountsGrid";
      this.accountsGrid.Size = new System.Drawing.Size(423, 248);
      this.accountsGrid.TabIndex = 0;
      // 
      // makeTransactionPage
      // 
      this.makeTransactionPage.Controls.Add(this.sourceAccountComboBox);
      this.makeTransactionPage.Controls.Add(this.destinationAccountTextBox);
      this.makeTransactionPage.Controls.Add(this.transferFundsButton);
      this.makeTransactionPage.Controls.Add(this.amountTextBox);
      this.makeTransactionPage.Controls.Add(this.label8);
      this.makeTransactionPage.Controls.Add(this.label7);
      this.makeTransactionPage.Controls.Add(this.label6);
      this.makeTransactionPage.Location = new System.Drawing.Point(4, 22);
      this.makeTransactionPage.Name = "makeTransactionPage";
      this.makeTransactionPage.Size = new System.Drawing.Size(453, 282);
      this.makeTransactionPage.TabIndex = 2;
      this.makeTransactionPage.Text = "make transaction";
      this.makeTransactionPage.UseVisualStyleBackColor = true;
      // 
      // transferFundsButton
      // 
      this.transferFundsButton.Location = new System.Drawing.Point(29, 119);
      this.transferFundsButton.Name = "transferFundsButton";
      this.transferFundsButton.Size = new System.Drawing.Size(75, 45);
      this.transferFundsButton.TabIndex = 8;
      this.transferFundsButton.Text = "transfer funds";
      this.transferFundsButton.UseVisualStyleBackColor = true;
      this.transferFundsButton.Click += new System.EventHandler(this.transferFundsButton_Click);
      // 
      // amountTextBox
      // 
      this.amountTextBox.Location = new System.Drawing.Point(348, 23);
      this.amountTextBox.Mask = "0000000000";
      this.amountTextBox.Name = "amountTextBox";
      this.amountTextBox.Size = new System.Drawing.Size(67, 20);
      this.amountTextBox.TabIndex = 5;
      // 
      // label8
      // 
      this.label8.AutoSize = true;
      this.label8.Location = new System.Drawing.Point(345, 7);
      this.label8.Name = "label8";
      this.label8.Size = new System.Drawing.Size(42, 13);
      this.label8.TabIndex = 4;
      this.label8.Text = "amount";
      // 
      // label7
      // 
      this.label7.AutoSize = true;
      this.label7.Location = new System.Drawing.Point(208, 7);
      this.label7.Name = "label7";
      this.label7.Size = new System.Drawing.Size(100, 13);
      this.label7.TabIndex = 3;
      this.label7.Text = "destination account";
      // 
      // label6
      // 
      this.label6.AutoSize = true;
      this.label6.Location = new System.Drawing.Point(26, 6);
      this.label6.Name = "label6";
      this.label6.Size = new System.Drawing.Size(81, 13);
      this.label6.TabIndex = 2;
      this.label6.Text = "source account";
      // 
      // dbConnection
      // 
      this.dbConnection.FireInfoMessageEventOnUserErrors = false;
      // 
      // label11
      // 
      this.label11.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
      this.label11.AutoSize = true;
      this.label11.Location = new System.Drawing.Point(16, 323);
      this.label11.Name = "label11";
      this.label11.Size = new System.Drawing.Size(66, 13);
      this.label11.TabIndex = 9;
      this.label11.Text = "current user:";
      // 
      // usernameLabel
      // 
      this.usernameLabel.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
      this.usernameLabel.AutoSize = true;
      this.usernameLabel.Location = new System.Drawing.Point(89, 323);
      this.usernameLabel.Name = "usernameLabel";
      this.usernameLabel.Size = new System.Drawing.Size(79, 13);
      this.usernameLabel.TabIndex = 10;
      this.usernameLabel.Text = "usernameLabel";
      this.usernameLabel.Click += new System.EventHandler(this.usernameLabel_Click);
      // 
      // destinationAccountTextBox
      // 
      this.destinationAccountTextBox.Location = new System.Drawing.Point(211, 23);
      this.destinationAccountTextBox.Mask = "0000 0000 0000 0000";
      this.destinationAccountTextBox.Name = "destinationAccountTextBox";
      this.destinationAccountTextBox.Size = new System.Drawing.Size(116, 20);
      this.destinationAccountTextBox.TabIndex = 9;
      // 
      // sourceAccountComboBox
      // 
      this.sourceAccountComboBox.FormattingEnabled = true;
      this.sourceAccountComboBox.Location = new System.Drawing.Point(29, 21);
      this.sourceAccountComboBox.Name = "sourceAccountComboBox";
      this.sourceAccountComboBox.Size = new System.Drawing.Size(121, 21);
      this.sourceAccountComboBox.TabIndex = 10;
      // 
      // Form1
      // 
      this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
      this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
      this.ClientSize = new System.Drawing.Size(485, 347);
      this.Controls.Add(this.usernameLabel);
      this.Controls.Add(this.label11);
      this.Controls.Add(this.pageControl);
      this.Name = "Form1";
      this.Text = "Form1";
      this.Load += new System.EventHandler(this.Form1_Load);
      this.pageControl.ResumeLayout(false);
      this.addClientPage.ResumeLayout(false);
      this.addClientPage.PerformLayout();
      this.tabPage2.ResumeLayout(false);
      this.tabPage2.PerformLayout();
      this.showAccounts.ResumeLayout(false);
      ((System.ComponentModel.ISupportInitialize)(this.accountsGrid)).EndInit();
      this.makeTransactionPage.ResumeLayout(false);
      this.makeTransactionPage.PerformLayout();
      this.ResumeLayout(false);
      this.PerformLayout();

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
    private System.Windows.Forms.MaskedTextBox amountTextBox;
    private System.Windows.Forms.Label label8;
    private System.Windows.Forms.Label label7;
    private System.Windows.Forms.Label label6;
    private System.Windows.Forms.Button transferFundsButton;
    private System.Windows.Forms.TextBox passwordTextBox;
    private System.Windows.Forms.TextBox userNameTextBox;
    private System.Windows.Forms.Label label10;
    private System.Windows.Forms.Label label9;
    private System.Data.SqlClient.SqlConnection dbConnection;
    private System.Windows.Forms.TabPage showAccounts;
    private System.Windows.Forms.DataGridView accountsGrid;
    private System.Windows.Forms.Label label11;
    private System.Windows.Forms.Label usernameLabel;
    private System.Windows.Forms.MaskedTextBox destinationAccountTextBox;
    private System.Windows.Forms.ComboBox sourceAccountComboBox;
  }
}

