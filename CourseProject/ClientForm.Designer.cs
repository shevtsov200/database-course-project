namespace CourseProject
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
      this.components = new System.ComponentModel.Container();
      this.pageControl = new System.Windows.Forms.TabControl();
      this.tabPage2 = new System.Windows.Forms.TabPage();
      this.button2 = new System.Windows.Forms.Button();
      this.interestTextBox = new System.Windows.Forms.MaskedTextBox();
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
      this.historyPage = new System.Windows.Forms.TabPage();
      this.historyGrid = new System.Windows.Forms.DataGridView();
      this.LeaveFeedback = new System.Windows.Forms.TabPage();
      this.managerComboBox = new System.Windows.Forms.ComboBox();
      this.ratingComboBox = new System.Windows.Forms.ComboBox();
      this.label1 = new System.Windows.Forms.Label();
      this.sendFeedbackButton = new System.Windows.Forms.Button();
      this.feedbackTextBox = new System.Windows.Forms.TextBox();
      this.dbConnection = new System.Data.SqlClient.SqlConnection();
      this.label11 = new System.Windows.Forms.Label();
      this.usernameLabel = new System.Windows.Forms.Label();
      this.mainMenu1 = new System.Windows.Forms.MainMenu(this.components);
      this.menuItem1 = new System.Windows.Forms.MenuItem();
      this.menuItem2 = new System.Windows.Forms.MenuItem();
      this.pageControl.SuspendLayout();
      this.tabPage2.SuspendLayout();
      this.showAccounts.SuspendLayout();
      ((System.ComponentModel.ISupportInitialize)(this.accountsGrid)).BeginInit();
      this.makeTransactionPage.SuspendLayout();
      this.historyPage.SuspendLayout();
      ((System.ComponentModel.ISupportInitialize)(this.historyGrid)).BeginInit();
      this.LeaveFeedback.SuspendLayout();
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
      this.pageControl.Controls.Add(this.historyPage);
      this.pageControl.Controls.Add(this.LeaveFeedback);
      this.pageControl.Location = new System.Drawing.Point(12, 12);
      this.pageControl.Name = "pageControl";
      this.pageControl.SelectedIndex = 0;
      this.pageControl.Size = new System.Drawing.Size(461, 308);
      this.pageControl.TabIndex = 8;
      // 
      // tabPage2
      // 
      this.tabPage2.Controls.Add(this.button2);
      this.tabPage2.Controls.Add(this.interestTextBox);
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
      // interestTextBox
      // 
      this.interestTextBox.Location = new System.Drawing.Point(72, 64);
      this.interestTextBox.Mask = "00.00%";
      this.interestTextBox.Name = "interestTextBox";
      this.interestTextBox.Size = new System.Drawing.Size(43, 20);
      this.interestTextBox.TabIndex = 8;
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
      this.accountsGrid.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.accountsGrid_CellContentClick);
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
      // historyPage
      // 
      this.historyPage.Controls.Add(this.historyGrid);
      this.historyPage.Location = new System.Drawing.Point(4, 22);
      this.historyPage.Name = "historyPage";
      this.historyPage.Padding = new System.Windows.Forms.Padding(3);
      this.historyPage.Size = new System.Drawing.Size(453, 282);
      this.historyPage.TabIndex = 4;
      this.historyPage.Text = "transaction history";
      this.historyPage.UseVisualStyleBackColor = true;
      // 
      // historyGrid
      // 
      this.historyGrid.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
      this.historyGrid.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
      this.historyGrid.Location = new System.Drawing.Point(7, 7);
      this.historyGrid.Name = "historyGrid";
      this.historyGrid.Size = new System.Drawing.Size(440, 269);
      this.historyGrid.TabIndex = 0;
      this.historyGrid.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
      // 
      // LeaveFeedback
      // 
      this.LeaveFeedback.Controls.Add(this.managerComboBox);
      this.LeaveFeedback.Controls.Add(this.ratingComboBox);
      this.LeaveFeedback.Controls.Add(this.label1);
      this.LeaveFeedback.Controls.Add(this.sendFeedbackButton);
      this.LeaveFeedback.Controls.Add(this.feedbackTextBox);
      this.LeaveFeedback.Location = new System.Drawing.Point(4, 22);
      this.LeaveFeedback.Name = "LeaveFeedback";
      this.LeaveFeedback.Size = new System.Drawing.Size(453, 282);
      this.LeaveFeedback.TabIndex = 5;
      this.LeaveFeedback.Text = "leave feedback";
      this.LeaveFeedback.UseVisualStyleBackColor = true;
      // 
      // managerComboBox
      // 
      this.managerComboBox.FormattingEnabled = true;
      this.managerComboBox.Location = new System.Drawing.Point(75, 10);
      this.managerComboBox.Name = "managerComboBox";
      this.managerComboBox.Size = new System.Drawing.Size(121, 21);
      this.managerComboBox.TabIndex = 5;
      this.managerComboBox.SelectedIndexChanged += new System.EventHandler(this.managerComboBox_SelectedIndexChanged);
      // 
      // ratingComboBox
      // 
      this.ratingComboBox.FormattingEnabled = true;
      this.ratingComboBox.Location = new System.Drawing.Point(241, 10);
      this.ratingComboBox.Name = "ratingComboBox";
      this.ratingComboBox.Size = new System.Drawing.Size(87, 21);
      this.ratingComboBox.TabIndex = 4;
      // 
      // label1
      // 
      this.label1.AutoSize = true;
      this.label1.Location = new System.Drawing.Point(20, 10);
      this.label1.Name = "label1";
      this.label1.Size = new System.Drawing.Size(48, 13);
      this.label1.TabIndex = 3;
      this.label1.Text = "manager";
      this.label1.Click += new System.EventHandler(this.label1_Click_1);
      // 
      // sendFeedbackButton
      // 
      this.sendFeedbackButton.Location = new System.Drawing.Point(20, 246);
      this.sendFeedbackButton.Name = "sendFeedbackButton";
      this.sendFeedbackButton.Size = new System.Drawing.Size(132, 23);
      this.sendFeedbackButton.TabIndex = 1;
      this.sendFeedbackButton.Text = "send feedback";
      this.sendFeedbackButton.UseVisualStyleBackColor = true;
      this.sendFeedbackButton.Click += new System.EventHandler(this.button1_Click);
      // 
      // feedbackTextBox
      // 
      this.feedbackTextBox.AcceptsReturn = true;
      this.feedbackTextBox.AcceptsTab = true;
      this.feedbackTextBox.AllowDrop = true;
      this.feedbackTextBox.Location = new System.Drawing.Point(20, 37);
      this.feedbackTextBox.MaxLength = 4000;
      this.feedbackTextBox.Multiline = true;
      this.feedbackTextBox.Name = "feedbackTextBox";
      this.feedbackTextBox.Size = new System.Drawing.Size(407, 203);
      this.feedbackTextBox.TabIndex = 0;
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
      // mainMenu1
      // 
      this.mainMenu1.MenuItems.AddRange(new System.Windows.Forms.MenuItem[] {
            this.menuItem1});
      // 
      // menuItem1
      // 
      this.menuItem1.Index = 0;
      this.menuItem1.MenuItems.AddRange(new System.Windows.Forms.MenuItem[] {
            this.menuItem2});
      this.menuItem1.Text = "Network";
      // 
      // menuItem2
      // 
      this.menuItem2.Index = 0;
      this.menuItem2.Text = "Log out";
      this.menuItem2.Click += new System.EventHandler(this.menuItem2_Click);
      // 
      // ClientForm
      // 
      this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
      this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
      this.ClientSize = new System.Drawing.Size(485, 347);
      this.Controls.Add(this.usernameLabel);
      this.Controls.Add(this.label11);
      this.Controls.Add(this.pageControl);
      this.Menu = this.mainMenu1;
      this.Name = "ClientForm";
      this.Text = "Form1";
      this.Load += new System.EventHandler(this.Form1_Load);
      this.pageControl.ResumeLayout(false);
      this.tabPage2.ResumeLayout(false);
      this.tabPage2.PerformLayout();
      this.showAccounts.ResumeLayout(false);
      ((System.ComponentModel.ISupportInitialize)(this.accountsGrid)).EndInit();
      this.makeTransactionPage.ResumeLayout(false);
      this.makeTransactionPage.PerformLayout();
      this.historyPage.ResumeLayout(false);
      ((System.ComponentModel.ISupportInitialize)(this.historyGrid)).EndInit();
      this.LeaveFeedback.ResumeLayout(false);
      this.LeaveFeedback.PerformLayout();
      this.ResumeLayout(false);
      this.PerformLayout();

    }

    #endregion
    private System.Windows.Forms.TabControl pageControl;
    private System.Windows.Forms.TabPage tabPage2;
    private System.Windows.Forms.Label openAccountPassportLabel;
    private System.Windows.Forms.MaskedTextBox openAccountPassport;
    private System.Windows.Forms.MaskedTextBox interestTextBox;
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
    private System.Windows.Forms.TabPage historyPage;
    private System.Windows.Forms.DataGridView historyGrid;
    private System.Windows.Forms.TabPage LeaveFeedback;
    private System.Windows.Forms.ComboBox ratingComboBox;
    private System.Windows.Forms.Label label1;
    private System.Windows.Forms.Button sendFeedbackButton;
    private System.Windows.Forms.TextBox feedbackTextBox;
    private System.Windows.Forms.ComboBox managerComboBox;
    private System.Windows.Forms.MainMenu mainMenu1;
    private System.Windows.Forms.MenuItem menuItem1;
    private System.Windows.Forms.MenuItem menuItem2;
  }
}

