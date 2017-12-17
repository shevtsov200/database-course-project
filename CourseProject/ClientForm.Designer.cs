﻿namespace CourseProject
{
  partial class ClientForm
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
      this.pageControl = new System.Windows.Forms.TabControl();
      this.tabPage2 = new System.Windows.Forms.TabPage();
      this.button2 = new System.Windows.Forms.Button();
      this.maskedTextBox1 = new System.Windows.Forms.MaskedTextBox();
      this.label5 = new System.Windows.Forms.Label();
      this.openAccountPassport = new System.Windows.Forms.MaskedTextBox();
      this.openAccountPassportLabel = new System.Windows.Forms.Label();
      this.showAccounts = new System.Windows.Forms.TabPage();
      this.accountsGrid = new System.Windows.Forms.DataGridView();
      this.makeTransactionPage = new System.Windows.Forms.TabPage();
      this.sourceAccountComboBox = new System.Windows.Forms.ComboBox();
      this.destinationAccountTextBox = new System.Windows.Forms.MaskedTextBox();
      this.transferFundsButton = new System.Windows.Forms.Button();
      this.amountTextBox = new System.Windows.Forms.MaskedTextBox();
      this.label8 = new System.Windows.Forms.Label();
      this.label7 = new System.Windows.Forms.Label();
      this.label6 = new System.Windows.Forms.Label();
      this.dbConnection = new System.Data.SqlClient.SqlConnection();
      this.label11 = new System.Windows.Forms.Label();
      this.usernameLabel = new System.Windows.Forms.Label();
      this.pageControl.SuspendLayout();
      this.tabPage2.SuspendLayout();
      this.showAccounts.SuspendLayout();
      ((System.ComponentModel.ISupportInitialize)(this.accountsGrid)).BeginInit();
      this.makeTransactionPage.SuspendLayout();
      this.SuspendLayout();
      // 
      // pageControl
      // 
      this.pageControl.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
      this.pageControl.Controls.Add(this.tabPage2);
      this.pageControl.Controls.Add(this.showAccounts);
      this.pageControl.Controls.Add(this.makeTransactionPage);
      this.pageControl.Location = new System.Drawing.Point(12, 12);
      this.pageControl.Name = "pageControl";
      this.pageControl.SelectedIndex = 0;
      this.pageControl.Size = new System.Drawing.Size(461, 308);
      this.pageControl.TabIndex = 8;
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
      // sourceAccountComboBox
      // 
      this.sourceAccountComboBox.FormattingEnabled = true;
      this.sourceAccountComboBox.Location = new System.Drawing.Point(29, 21);
      this.sourceAccountComboBox.Name = "sourceAccountComboBox";
      this.sourceAccountComboBox.Size = new System.Drawing.Size(121, 21);
      this.sourceAccountComboBox.TabIndex = 10;
      // 
      // destinationAccountTextBox
      // 
      this.destinationAccountTextBox.Location = new System.Drawing.Point(211, 23);
      this.destinationAccountTextBox.Mask = "0000 0000 0000 0000";
      this.destinationAccountTextBox.Name = "destinationAccountTextBox";
      this.destinationAccountTextBox.Size = new System.Drawing.Size(116, 20);
      this.destinationAccountTextBox.TabIndex = 9;
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
    private System.Windows.Forms.TabControl pageControl;
    private System.Windows.Forms.TabPage tabPage2;
    private System.Windows.Forms.Label openAccountPassportLabel;
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
    private System.Data.SqlClient.SqlConnection dbConnection;
    private System.Windows.Forms.TabPage showAccounts;
    private System.Windows.Forms.DataGridView accountsGrid;
    private System.Windows.Forms.Label label11;
    private System.Windows.Forms.Label usernameLabel;
    private System.Windows.Forms.MaskedTextBox destinationAccountTextBox;
    private System.Windows.Forms.ComboBox sourceAccountComboBox;
  }
}
