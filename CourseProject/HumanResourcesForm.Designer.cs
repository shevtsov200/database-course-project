namespace CourseProject
{
  partial class HumanResourcesForm
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
      this.tabControl1 = new System.Windows.Forms.TabControl();
      this.addEmployeePage = new System.Windows.Forms.TabPage();
      this.label6 = new System.Windows.Forms.Label();
      this.positionComboBox = new System.Windows.Forms.ComboBox();
      this.passwordTextBox = new System.Windows.Forms.TextBox();
      this.addEmployeeButton = new System.Windows.Forms.Button();
      this.userNameTextBox = new System.Windows.Forms.TextBox();
      this.salaryLabel = new System.Windows.Forms.Label();
      this.label10 = new System.Windows.Forms.Label();
      this.salaryTextBox = new System.Windows.Forms.MaskedTextBox();
      this.label9 = new System.Windows.Forms.Label();
      this.nameTextBox = new System.Windows.Forms.TextBox();
      this.passportTextBox = new System.Windows.Forms.MaskedTextBox();
      this.label3 = new System.Windows.Forms.Label();
      this.label4 = new System.Windows.Forms.Label();
      this.label2 = new System.Windows.Forms.Label();
      this.phoneTextBox = new System.Windows.Forms.MaskedTextBox();
      this.label1 = new System.Windows.Forms.Label();
      this.passportLabel = new System.Windows.Forms.Label();
      this.bankComboBox = new System.Windows.Forms.ComboBox();
      this.label5 = new System.Windows.Forms.Label();
      this.cityComboBox = new System.Windows.Forms.ComboBox();
      this.addressTextBox = new System.Windows.Forms.TextBox();
      this.ratingPage = new System.Windows.Forms.TabPage();
      this.ratingLayout = new System.Windows.Forms.TableLayoutPanel();
      this.ratingGrid = new System.Windows.Forms.DataGridView();
      this.fireEmployeePage = new System.Windows.Forms.TabPage();
      this.button1 = new System.Windows.Forms.Button();
      this.employeeComboBox = new System.Windows.Forms.ComboBox();
      this.label7 = new System.Windows.Forms.Label();
      this.mainMenu1 = new System.Windows.Forms.MainMenu(this.components);
      this.menuItem1 = new System.Windows.Forms.MenuItem();
      this.logoutMenu = new System.Windows.Forms.MenuItem();
      this.tableLayoutPanel1 = new System.Windows.Forms.TableLayoutPanel();
      this.tabControl1.SuspendLayout();
      this.addEmployeePage.SuspendLayout();
      this.ratingPage.SuspendLayout();
      this.ratingLayout.SuspendLayout();
      ((System.ComponentModel.ISupportInitialize)(this.ratingGrid)).BeginInit();
      this.fireEmployeePage.SuspendLayout();
      this.tableLayoutPanel1.SuspendLayout();
      this.SuspendLayout();
      // 
      // tabControl1
      // 
      this.tabControl1.Controls.Add(this.addEmployeePage);
      this.tabControl1.Controls.Add(this.ratingPage);
      this.tabControl1.Controls.Add(this.fireEmployeePage);
      this.tabControl1.Dock = System.Windows.Forms.DockStyle.Fill;
      this.tabControl1.Location = new System.Drawing.Point(3, 3);
      this.tabControl1.Name = "tabControl1";
      this.tabControl1.SelectedIndex = 0;
      this.tabControl1.Size = new System.Drawing.Size(673, 431);
      this.tabControl1.TabIndex = 0;
      this.tabControl1.SelectedIndexChanged += new System.EventHandler(this.tabControl1_SelectedIndexChanged);
      // 
      // addEmployeePage
      // 
      this.addEmployeePage.Controls.Add(this.label6);
      this.addEmployeePage.Controls.Add(this.positionComboBox);
      this.addEmployeePage.Controls.Add(this.passwordTextBox);
      this.addEmployeePage.Controls.Add(this.addEmployeeButton);
      this.addEmployeePage.Controls.Add(this.userNameTextBox);
      this.addEmployeePage.Controls.Add(this.salaryLabel);
      this.addEmployeePage.Controls.Add(this.label10);
      this.addEmployeePage.Controls.Add(this.salaryTextBox);
      this.addEmployeePage.Controls.Add(this.label9);
      this.addEmployeePage.Controls.Add(this.nameTextBox);
      this.addEmployeePage.Controls.Add(this.passportTextBox);
      this.addEmployeePage.Controls.Add(this.label3);
      this.addEmployeePage.Controls.Add(this.label4);
      this.addEmployeePage.Controls.Add(this.label2);
      this.addEmployeePage.Controls.Add(this.phoneTextBox);
      this.addEmployeePage.Controls.Add(this.label1);
      this.addEmployeePage.Controls.Add(this.passportLabel);
      this.addEmployeePage.Controls.Add(this.bankComboBox);
      this.addEmployeePage.Controls.Add(this.label5);
      this.addEmployeePage.Controls.Add(this.cityComboBox);
      this.addEmployeePage.Controls.Add(this.addressTextBox);
      this.addEmployeePage.Location = new System.Drawing.Point(4, 22);
      this.addEmployeePage.Name = "addEmployeePage";
      this.addEmployeePage.Padding = new System.Windows.Forms.Padding(3);
      this.addEmployeePage.Size = new System.Drawing.Size(665, 405);
      this.addEmployeePage.TabIndex = 0;
      this.addEmployeePage.Text = "add employee";
      this.addEmployeePage.UseVisualStyleBackColor = true;
      // 
      // label6
      // 
      this.label6.AutoSize = true;
      this.label6.Location = new System.Drawing.Point(7, 246);
      this.label6.Name = "label6";
      this.label6.Size = new System.Drawing.Size(43, 13);
      this.label6.TabIndex = 28;
      this.label6.Text = "position";
      this.label6.Click += new System.EventHandler(this.label6_Click);
      // 
      // positionComboBox
      // 
      this.positionComboBox.FormattingEnabled = true;
      this.positionComboBox.Location = new System.Drawing.Point(69, 243);
      this.positionComboBox.Name = "positionComboBox";
      this.positionComboBox.Size = new System.Drawing.Size(84, 21);
      this.positionComboBox.TabIndex = 27;
      // 
      // passwordTextBox
      // 
      this.passwordTextBox.Location = new System.Drawing.Point(69, 209);
      this.passwordTextBox.Name = "passwordTextBox";
      this.passwordTextBox.Size = new System.Drawing.Size(86, 20);
      this.passwordTextBox.TabIndex = 26;
      // 
      // addEmployeeButton
      // 
      this.addEmployeeButton.Location = new System.Drawing.Point(24, 285);
      this.addEmployeeButton.Name = "addEmployeeButton";
      this.addEmployeeButton.Size = new System.Drawing.Size(121, 23);
      this.addEmployeeButton.TabIndex = 8;
      this.addEmployeeButton.Text = "add employee";
      this.addEmployeeButton.UseVisualStyleBackColor = true;
      this.addEmployeeButton.Click += new System.EventHandler(this.addEmployeeButton_Click);
      // 
      // userNameTextBox
      // 
      this.userNameTextBox.Location = new System.Drawing.Point(69, 180);
      this.userNameTextBox.Name = "userNameTextBox";
      this.userNameTextBox.Size = new System.Drawing.Size(86, 20);
      this.userNameTextBox.TabIndex = 25;
      // 
      // salaryLabel
      // 
      this.salaryLabel.AutoSize = true;
      this.salaryLabel.Location = new System.Drawing.Point(7, 142);
      this.salaryLabel.Name = "salaryLabel";
      this.salaryLabel.Size = new System.Drawing.Size(34, 13);
      this.salaryLabel.TabIndex = 7;
      this.salaryLabel.Text = "salary";
      // 
      // label10
      // 
      this.label10.AutoSize = true;
      this.label10.Location = new System.Drawing.Point(7, 216);
      this.label10.Name = "label10";
      this.label10.Size = new System.Drawing.Size(52, 13);
      this.label10.TabIndex = 24;
      this.label10.Text = "password";
      // 
      // salaryTextBox
      // 
      this.salaryTextBox.Location = new System.Drawing.Point(69, 142);
      this.salaryTextBox.Mask = "000000.00";
      this.salaryTextBox.Name = "salaryTextBox";
      this.salaryTextBox.Size = new System.Drawing.Size(61, 20);
      this.salaryTextBox.TabIndex = 6;
      this.salaryTextBox.MaskInputRejected += new System.Windows.Forms.MaskInputRejectedEventHandler(this.salaryTextBox_MaskInputRejected);
      // 
      // label9
      // 
      this.label9.AutoSize = true;
      this.label9.Location = new System.Drawing.Point(7, 180);
      this.label9.Name = "label9";
      this.label9.Size = new System.Drawing.Size(56, 13);
      this.label9.TabIndex = 23;
      this.label9.Text = "user name";
      // 
      // nameTextBox
      // 
      this.nameTextBox.Location = new System.Drawing.Point(69, 30);
      this.nameTextBox.Name = "nameTextBox";
      this.nameTextBox.Size = new System.Drawing.Size(121, 20);
      this.nameTextBox.TabIndex = 5;
      // 
      // passportTextBox
      // 
      this.passportTextBox.Location = new System.Drawing.Point(257, 69);
      this.passportTextBox.Mask = "00 00 000000";
      this.passportTextBox.Name = "passportTextBox";
      this.passportTextBox.Size = new System.Drawing.Size(83, 20);
      this.passportTextBox.TabIndex = 22;
      // 
      // label3
      // 
      this.label3.AutoSize = true;
      this.label3.Location = new System.Drawing.Point(8, 30);
      this.label3.Name = "label3";
      this.label3.Size = new System.Drawing.Size(33, 13);
      this.label3.TabIndex = 4;
      this.label3.Text = "name";
      // 
      // label4
      // 
      this.label4.AutoSize = true;
      this.label4.Location = new System.Drawing.Point(207, 107);
      this.label4.Name = "label4";
      this.label4.Size = new System.Drawing.Size(37, 13);
      this.label4.TabIndex = 21;
      this.label4.Text = "phone";
      // 
      // label2
      // 
      this.label2.AutoSize = true;
      this.label2.Location = new System.Drawing.Point(7, 114);
      this.label2.Name = "label2";
      this.label2.Size = new System.Drawing.Size(31, 13);
      this.label2.TabIndex = 3;
      this.label2.Text = "bank";
      // 
      // phoneTextBox
      // 
      this.phoneTextBox.Location = new System.Drawing.Point(257, 107);
      this.phoneTextBox.Mask = "(999) 000-0000";
      this.phoneTextBox.Name = "phoneTextBox";
      this.phoneTextBox.Size = new System.Drawing.Size(84, 20);
      this.phoneTextBox.TabIndex = 20;
      // 
      // label1
      // 
      this.label1.AutoSize = true;
      this.label1.Location = new System.Drawing.Point(7, 68);
      this.label1.Name = "label1";
      this.label1.Size = new System.Drawing.Size(23, 13);
      this.label1.TabIndex = 2;
      this.label1.Text = "city";
      // 
      // passportLabel
      // 
      this.passportLabel.AutoSize = true;
      this.passportLabel.Location = new System.Drawing.Point(204, 68);
      this.passportLabel.Name = "passportLabel";
      this.passportLabel.Size = new System.Drawing.Size(47, 13);
      this.passportLabel.TabIndex = 19;
      this.passportLabel.Text = "passport";
      // 
      // bankComboBox
      // 
      this.bankComboBox.FormattingEnabled = true;
      this.bankComboBox.Location = new System.Drawing.Point(69, 107);
      this.bankComboBox.Name = "bankComboBox";
      this.bankComboBox.Size = new System.Drawing.Size(121, 21);
      this.bankComboBox.TabIndex = 1;
      // 
      // label5
      // 
      this.label5.AutoSize = true;
      this.label5.Location = new System.Drawing.Point(204, 30);
      this.label5.Name = "label5";
      this.label5.Size = new System.Drawing.Size(44, 13);
      this.label5.TabIndex = 18;
      this.label5.Text = "address";
      this.label5.Click += new System.EventHandler(this.label5_Click);
      // 
      // cityComboBox
      // 
      this.cityComboBox.FormattingEnabled = true;
      this.cityComboBox.Location = new System.Drawing.Point(69, 69);
      this.cityComboBox.Name = "cityComboBox";
      this.cityComboBox.Size = new System.Drawing.Size(121, 21);
      this.cityComboBox.TabIndex = 0;
      this.cityComboBox.SelectedIndexChanged += new System.EventHandler(this.CityComboBox_SelectedIndexChanged);
      // 
      // addressTextBox
      // 
      this.addressTextBox.Location = new System.Drawing.Point(257, 30);
      this.addressTextBox.Name = "addressTextBox";
      this.addressTextBox.Size = new System.Drawing.Size(148, 20);
      this.addressTextBox.TabIndex = 17;
      // 
      // ratingPage
      // 
      this.ratingPage.Controls.Add(this.ratingLayout);
      this.ratingPage.Location = new System.Drawing.Point(4, 22);
      this.ratingPage.Name = "ratingPage";
      this.ratingPage.Padding = new System.Windows.Forms.Padding(3);
      this.ratingPage.Size = new System.Drawing.Size(665, 405);
      this.ratingPage.TabIndex = 1;
      this.ratingPage.Text = "see employees rating";
      this.ratingPage.UseVisualStyleBackColor = true;
      // 
      // ratingLayout
      // 
      this.ratingLayout.ColumnCount = 1;
      this.ratingLayout.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100F));
      this.ratingLayout.Controls.Add(this.ratingGrid, 0, 0);
      this.ratingLayout.Dock = System.Windows.Forms.DockStyle.Fill;
      this.ratingLayout.Location = new System.Drawing.Point(3, 3);
      this.ratingLayout.Name = "ratingLayout";
      this.ratingLayout.RowCount = 1;
      this.ratingLayout.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100F));
      this.ratingLayout.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 399F));
      this.ratingLayout.Size = new System.Drawing.Size(659, 399);
      this.ratingLayout.TabIndex = 1;
      // 
      // ratingGrid
      // 
      this.ratingGrid.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
      this.ratingGrid.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
      this.ratingGrid.Location = new System.Drawing.Point(3, 3);
      this.ratingGrid.Name = "ratingGrid";
      this.ratingGrid.Size = new System.Drawing.Size(653, 393);
      this.ratingGrid.TabIndex = 0;
      // 
      // fireEmployeePage
      // 
      this.fireEmployeePage.Controls.Add(this.button1);
      this.fireEmployeePage.Controls.Add(this.employeeComboBox);
      this.fireEmployeePage.Controls.Add(this.label7);
      this.fireEmployeePage.Location = new System.Drawing.Point(4, 22);
      this.fireEmployeePage.Name = "fireEmployeePage";
      this.fireEmployeePage.Padding = new System.Windows.Forms.Padding(3);
      this.fireEmployeePage.Size = new System.Drawing.Size(665, 405);
      this.fireEmployeePage.TabIndex = 2;
      this.fireEmployeePage.Text = "Fire Employee";
      this.fireEmployeePage.UseVisualStyleBackColor = true;
      // 
      // button1
      // 
      this.button1.Location = new System.Drawing.Point(63, 72);
      this.button1.Name = "button1";
      this.button1.Size = new System.Drawing.Size(121, 23);
      this.button1.TabIndex = 8;
      this.button1.Text = "fire";
      this.button1.UseVisualStyleBackColor = true;
      this.button1.Click += new System.EventHandler(this.button1_Click);
      // 
      // employeeComboBox
      // 
      this.employeeComboBox.FormattingEnabled = true;
      this.employeeComboBox.Location = new System.Drawing.Point(63, 17);
      this.employeeComboBox.Name = "employeeComboBox";
      this.employeeComboBox.Size = new System.Drawing.Size(121, 21);
      this.employeeComboBox.TabIndex = 7;
      this.employeeComboBox.SelectedIndexChanged += new System.EventHandler(this.employeeComboBox_SelectedIndexChanged);
      // 
      // label7
      // 
      this.label7.AutoSize = true;
      this.label7.Location = new System.Drawing.Point(8, 17);
      this.label7.Name = "label7";
      this.label7.Size = new System.Drawing.Size(52, 13);
      this.label7.TabIndex = 6;
      this.label7.Text = "employee";
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
            this.logoutMenu});
      this.menuItem1.Text = "network";
      // 
      // logoutMenu
      // 
      this.logoutMenu.Index = 0;
      this.logoutMenu.Text = "log out";
      this.logoutMenu.Click += new System.EventHandler(this.logoutMenu_Click);
      // 
      // tableLayoutPanel1
      // 
      this.tableLayoutPanel1.ColumnCount = 1;
      this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100F));
      this.tableLayoutPanel1.Controls.Add(this.tabControl1, 0, 0);
      this.tableLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Fill;
      this.tableLayoutPanel1.Location = new System.Drawing.Point(0, 0);
      this.tableLayoutPanel1.Name = "tableLayoutPanel1";
      this.tableLayoutPanel1.RowCount = 1;
      this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100F));
      this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
      this.tableLayoutPanel1.Size = new System.Drawing.Size(679, 437);
      this.tableLayoutPanel1.TabIndex = 1;
      // 
      // HumanResourcesForm
      // 
      this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
      this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
      this.ClientSize = new System.Drawing.Size(679, 437);
      this.Controls.Add(this.tableLayoutPanel1);
      this.Menu = this.mainMenu1;
      this.Name = "HumanResourcesForm";
      this.Text = "HRForm";
      this.tabControl1.ResumeLayout(false);
      this.addEmployeePage.ResumeLayout(false);
      this.addEmployeePage.PerformLayout();
      this.ratingPage.ResumeLayout(false);
      this.ratingLayout.ResumeLayout(false);
      ((System.ComponentModel.ISupportInitialize)(this.ratingGrid)).EndInit();
      this.fireEmployeePage.ResumeLayout(false);
      this.fireEmployeePage.PerformLayout();
      this.tableLayoutPanel1.ResumeLayout(false);
      this.ResumeLayout(false);

    }

    #endregion

    private System.Windows.Forms.TabControl tabControl1;
    private System.Windows.Forms.TabPage addEmployeePage;
    private System.Windows.Forms.TabPage ratingPage;
    private System.Windows.Forms.ComboBox bankComboBox;
    private System.Windows.Forms.ComboBox cityComboBox;
    private System.Windows.Forms.TextBox nameTextBox;
    private System.Windows.Forms.Label label3;
    private System.Windows.Forms.Label label2;
    private System.Windows.Forms.Label label1;
    private System.Windows.Forms.Label salaryLabel;
    private System.Windows.Forms.MaskedTextBox salaryTextBox;
    private System.Windows.Forms.Button addEmployeeButton;
    private System.Windows.Forms.TextBox passwordTextBox;
    private System.Windows.Forms.TextBox userNameTextBox;
    private System.Windows.Forms.Label label10;
    private System.Windows.Forms.Label label9;
    private System.Windows.Forms.MaskedTextBox passportTextBox;
    private System.Windows.Forms.Label label4;
    private System.Windows.Forms.MaskedTextBox phoneTextBox;
    private System.Windows.Forms.Label passportLabel;
    private System.Windows.Forms.Label label5;
    private System.Windows.Forms.TextBox addressTextBox;
    private System.Windows.Forms.Label label6;
    private System.Windows.Forms.ComboBox positionComboBox;
    private System.Windows.Forms.DataGridView ratingGrid;
    private System.Windows.Forms.TableLayoutPanel ratingLayout;
    private System.Windows.Forms.MainMenu mainMenu1;
    private System.Windows.Forms.MenuItem menuItem1;
    private System.Windows.Forms.MenuItem logoutMenu;
    private System.Windows.Forms.TableLayoutPanel tableLayoutPanel1;
    private System.Windows.Forms.TabPage fireEmployeePage;
    private System.Windows.Forms.ComboBox employeeComboBox;
    private System.Windows.Forms.Label label7;
    private System.Windows.Forms.Button button1;
  }
}