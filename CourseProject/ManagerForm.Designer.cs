namespace CourseProject
{
  partial class ManagerForm
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
      this.addClientPage = new System.Windows.Forms.TabPage();
      this.passwordTextBox = new System.Windows.Forms.TextBox();
      this.userNameTextBox = new System.Windows.Forms.TextBox();
      this.label10 = new System.Windows.Forms.Label();
      this.label9 = new System.Windows.Forms.Label();
      this.passport = new System.Windows.Forms.MaskedTextBox();
      this.label4 = new System.Windows.Forms.Label();
      this.phoneTextBox = new System.Windows.Forms.MaskedTextBox();
      this.passportLabel = new System.Windows.Forms.Label();
      this.city = new System.Windows.Forms.ComboBox();
      this.addClientButton = new System.Windows.Forms.Button();
      this.label3 = new System.Windows.Forms.Label();
      this.label2 = new System.Windows.Forms.Label();
      this.label1 = new System.Windows.Forms.Label();
      this.address = new System.Windows.Forms.TextBox();
      this.name = new System.Windows.Forms.TextBox();
      this.viewFeedbackPage = new System.Windows.Forms.TabPage();
      this.ratingTextBox = new System.Windows.Forms.TextBox();
      this.dateTextBox = new System.Windows.Forms.TextBox();
      this.viewFeedbackLayout = new System.Windows.Forms.TableLayoutPanel();
      this.clientTextBox = new System.Windows.Forms.TextBox();
      this.feedbackTextBox = new System.Windows.Forms.RichTextBox();
      this.feedbackGrid = new System.Windows.Forms.DataGridView();
      this.mainMenu1 = new System.Windows.Forms.MainMenu(this.components);
      this.menuItem1 = new System.Windows.Forms.MenuItem();
      this.logoutMenu = new System.Windows.Forms.MenuItem();
      this.updateClientPage = new System.Windows.Forms.TabPage();
      this.updatePasswordTextBox = new System.Windows.Forms.TextBox();
      this.updateUsernameTextBox = new System.Windows.Forms.TextBox();
      this.label5 = new System.Windows.Forms.Label();
      this.label6 = new System.Windows.Forms.Label();
      this.label7 = new System.Windows.Forms.Label();
      this.updatePhoneTextBox = new System.Windows.Forms.MaskedTextBox();
      this.label8 = new System.Windows.Forms.Label();
      this.updateCityComboBox = new System.Windows.Forms.ComboBox();
      this.updateClientButton = new System.Windows.Forms.Button();
      this.label11 = new System.Windows.Forms.Label();
      this.label12 = new System.Windows.Forms.Label();
      this.label13 = new System.Windows.Forms.Label();
      this.updateAddressTextBox = new System.Windows.Forms.TextBox();
      this.updatePassportTextBox = new System.Windows.Forms.MaskedTextBox();
      this.updateNameComboBox = new System.Windows.Forms.ComboBox();
      this.tabControl1.SuspendLayout();
      this.addClientPage.SuspendLayout();
      this.viewFeedbackPage.SuspendLayout();
      this.viewFeedbackLayout.SuspendLayout();
      ((System.ComponentModel.ISupportInitialize)(this.feedbackGrid)).BeginInit();
      this.updateClientPage.SuspendLayout();
      this.SuspendLayout();
      // 
      // tabControl1
      // 
      this.tabControl1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
      this.tabControl1.Controls.Add(this.addClientPage);
      this.tabControl1.Controls.Add(this.viewFeedbackPage);
      this.tabControl1.Controls.Add(this.updateClientPage);
      this.tabControl1.Location = new System.Drawing.Point(13, 13);
      this.tabControl1.Name = "tabControl1";
      this.tabControl1.SelectedIndex = 0;
      this.tabControl1.Size = new System.Drawing.Size(641, 441);
      this.tabControl1.TabIndex = 0;
      this.tabControl1.SelectedIndexChanged += new System.EventHandler(this.tabControl1_SelectedIndexChanged);
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
      this.addClientPage.Size = new System.Drawing.Size(633, 415);
      this.addClientPage.TabIndex = 3;
      this.addClientPage.Text = "add client";
      this.addClientPage.UseVisualStyleBackColor = true;
      // 
      // passwordTextBox
      // 
      this.passwordTextBox.Location = new System.Drawing.Point(297, 62);
      this.passwordTextBox.Name = "passwordTextBox";
      this.passwordTextBox.PasswordChar = '*';
      this.passwordTextBox.Size = new System.Drawing.Size(86, 20);
      this.passwordTextBox.TabIndex = 16;
      this.passwordTextBox.TextChanged += new System.EventHandler(this.passwordTextBox_TextChanged);
      // 
      // userNameTextBox
      // 
      this.userNameTextBox.Location = new System.Drawing.Point(297, 23);
      this.userNameTextBox.Name = "userNameTextBox";
      this.userNameTextBox.Size = new System.Drawing.Size(86, 20);
      this.userNameTextBox.TabIndex = 15;
      this.userNameTextBox.TextChanged += new System.EventHandler(this.userNameTextBox_TextChanged);
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
      this.passport.TextChanged += new System.EventHandler(this.passport_TextChanged);
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
      this.phoneTextBox.TextChanged += new System.EventHandler(this.phoneTextBox_TextChanged);
      // 
      // passportLabel
      // 
      this.passportLabel.AutoSize = true;
      this.passportLabel.Location = new System.Drawing.Point(22, 142);
      this.passportLabel.Name = "passportLabel";
      this.passportLabel.Size = new System.Drawing.Size(47, 13);
      this.passportLabel.TabIndex = 9;
      this.passportLabel.Text = "passport";
      // 
      // city
      // 
      this.city.FormattingEnabled = true;
      this.city.Location = new System.Drawing.Point(81, 62);
      this.city.Name = "city";
      this.city.Size = new System.Drawing.Size(148, 21);
      this.city.TabIndex = 7;
      this.city.SelectedIndexChanged += new System.EventHandler(this.city_SelectedIndexChanged);
      // 
      // addClientButton
      // 
      this.addClientButton.Location = new System.Drawing.Point(25, 249);
      this.addClientButton.Name = "addClientButton";
      this.addClientButton.Size = new System.Drawing.Size(100, 23);
      this.addClientButton.TabIndex = 6;
      this.addClientButton.Text = "add client";
      this.addClientButton.UseVisualStyleBackColor = true;
      this.addClientButton.Click += new System.EventHandler(this.addClientButton_Click_1);
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
      // label2
      // 
      this.label2.AutoSize = true;
      this.label2.Location = new System.Drawing.Point(22, 62);
      this.label2.Name = "label2";
      this.label2.Size = new System.Drawing.Size(23, 13);
      this.label2.TabIndex = 4;
      this.label2.Text = "city";
      // 
      // label1
      // 
      this.label1.AutoSize = true;
      this.label1.Location = new System.Drawing.Point(22, 23);
      this.label1.Name = "label1";
      this.label1.Size = new System.Drawing.Size(33, 13);
      this.label1.TabIndex = 3;
      this.label1.Text = "name";
      // 
      // address
      // 
      this.address.Location = new System.Drawing.Point(81, 106);
      this.address.Name = "address";
      this.address.Size = new System.Drawing.Size(148, 20);
      this.address.TabIndex = 2;
      this.address.TextChanged += new System.EventHandler(this.address_TextChanged);
      // 
      // name
      // 
      this.name.Location = new System.Drawing.Point(81, 23);
      this.name.Name = "name";
      this.name.Size = new System.Drawing.Size(148, 20);
      this.name.TabIndex = 0;
      this.name.TextChanged += new System.EventHandler(this.name_TextChanged);
      // 
      // viewFeedbackPage
      // 
      this.viewFeedbackPage.Controls.Add(this.ratingTextBox);
      this.viewFeedbackPage.Controls.Add(this.dateTextBox);
      this.viewFeedbackPage.Controls.Add(this.viewFeedbackLayout);
      this.viewFeedbackPage.Location = new System.Drawing.Point(4, 22);
      this.viewFeedbackPage.Name = "viewFeedbackPage";
      this.viewFeedbackPage.Size = new System.Drawing.Size(633, 415);
      this.viewFeedbackPage.TabIndex = 4;
      this.viewFeedbackPage.Text = "view feedback";
      this.viewFeedbackPage.UseVisualStyleBackColor = true;
      // 
      // ratingTextBox
      // 
      this.ratingTextBox.Location = new System.Drawing.Point(105, 4);
      this.ratingTextBox.Name = "ratingTextBox";
      this.ratingTextBox.Size = new System.Drawing.Size(26, 20);
      this.ratingTextBox.TabIndex = 4;
      // 
      // dateTextBox
      // 
      this.dateTextBox.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
      this.dateTextBox.Location = new System.Drawing.Point(530, 4);
      this.dateTextBox.Name = "dateTextBox";
      this.dateTextBox.Size = new System.Drawing.Size(100, 20);
      this.dateTextBox.TabIndex = 3;
      // 
      // viewFeedbackLayout
      // 
      this.viewFeedbackLayout.ColumnCount = 1;
      this.viewFeedbackLayout.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100F));
      this.viewFeedbackLayout.Controls.Add(this.clientTextBox, 0, 0);
      this.viewFeedbackLayout.Controls.Add(this.feedbackTextBox, 0, 1);
      this.viewFeedbackLayout.Controls.Add(this.feedbackGrid, 0, 2);
      this.viewFeedbackLayout.Dock = System.Windows.Forms.DockStyle.Fill;
      this.viewFeedbackLayout.Location = new System.Drawing.Point(0, 0);
      this.viewFeedbackLayout.Name = "viewFeedbackLayout";
      this.viewFeedbackLayout.RowCount = 3;
      this.viewFeedbackLayout.RowStyles.Add(new System.Windows.Forms.RowStyle());
      this.viewFeedbackLayout.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50F));
      this.viewFeedbackLayout.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50F));
      this.viewFeedbackLayout.Size = new System.Drawing.Size(633, 415);
      this.viewFeedbackLayout.TabIndex = 5;
      // 
      // clientTextBox
      // 
      this.clientTextBox.Location = new System.Drawing.Point(3, 3);
      this.clientTextBox.Name = "clientTextBox";
      this.clientTextBox.Size = new System.Drawing.Size(94, 20);
      this.clientTextBox.TabIndex = 2;
      // 
      // feedbackTextBox
      // 
      this.feedbackTextBox.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
      this.feedbackTextBox.Location = new System.Drawing.Point(3, 29);
      this.feedbackTextBox.Name = "feedbackTextBox";
      this.feedbackTextBox.Size = new System.Drawing.Size(627, 188);
      this.feedbackTextBox.TabIndex = 1;
      this.feedbackTextBox.Text = "";
      // 
      // feedbackGrid
      // 
      this.feedbackGrid.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
      this.feedbackGrid.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
      this.feedbackGrid.Location = new System.Drawing.Point(3, 223);
      this.feedbackGrid.Name = "feedbackGrid";
      this.feedbackGrid.Size = new System.Drawing.Size(627, 189);
      this.feedbackGrid.TabIndex = 0;
      this.feedbackGrid.SelectionChanged += new System.EventHandler(this.feedbackGrid_SelectionChanged);
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
      this.menuItem1.Text = "Network";
      // 
      // logoutMenu
      // 
      this.logoutMenu.Index = 0;
      this.logoutMenu.Text = "Log out";
      this.logoutMenu.Click += new System.EventHandler(this.logoutMenu_Click);
      // 
      // updateClientPage
      // 
      this.updateClientPage.Controls.Add(this.updateNameComboBox);
      this.updateClientPage.Controls.Add(this.updatePassportTextBox);
      this.updateClientPage.Controls.Add(this.updatePasswordTextBox);
      this.updateClientPage.Controls.Add(this.updateUsernameTextBox);
      this.updateClientPage.Controls.Add(this.label5);
      this.updateClientPage.Controls.Add(this.label6);
      this.updateClientPage.Controls.Add(this.label7);
      this.updateClientPage.Controls.Add(this.updatePhoneTextBox);
      this.updateClientPage.Controls.Add(this.label8);
      this.updateClientPage.Controls.Add(this.updateCityComboBox);
      this.updateClientPage.Controls.Add(this.updateClientButton);
      this.updateClientPage.Controls.Add(this.label11);
      this.updateClientPage.Controls.Add(this.label12);
      this.updateClientPage.Controls.Add(this.label13);
      this.updateClientPage.Controls.Add(this.updateAddressTextBox);
      this.updateClientPage.Location = new System.Drawing.Point(4, 22);
      this.updateClientPage.Name = "updateClientPage";
      this.updateClientPage.Size = new System.Drawing.Size(633, 415);
      this.updateClientPage.TabIndex = 5;
      this.updateClientPage.Text = "update client";
      this.updateClientPage.UseVisualStyleBackColor = true;
      // 
      // updatePasswordTextBox
      // 
      this.updatePasswordTextBox.Location = new System.Drawing.Point(289, 54);
      this.updatePasswordTextBox.Name = "updatePasswordTextBox";
      this.updatePasswordTextBox.PasswordChar = '*';
      this.updatePasswordTextBox.Size = new System.Drawing.Size(86, 20);
      this.updatePasswordTextBox.TabIndex = 31;
      this.updatePasswordTextBox.TextChanged += new System.EventHandler(this.updateTextBox_TextChanged);
      // 
      // updateUsernameTextBox
      // 
      this.updateUsernameTextBox.Location = new System.Drawing.Point(289, 15);
      this.updateUsernameTextBox.Name = "updateUsernameTextBox";
      this.updateUsernameTextBox.Size = new System.Drawing.Size(86, 20);
      this.updateUsernameTextBox.TabIndex = 30;
      this.updateUsernameTextBox.TextChanged += new System.EventHandler(this.updateTextBox_TextChanged);
      // 
      // label5
      // 
      this.label5.AutoSize = true;
      this.label5.Location = new System.Drawing.Point(227, 54);
      this.label5.Name = "label5";
      this.label5.Size = new System.Drawing.Size(52, 13);
      this.label5.TabIndex = 29;
      this.label5.Text = "password";
      // 
      // label6
      // 
      this.label6.AutoSize = true;
      this.label6.Location = new System.Drawing.Point(227, 15);
      this.label6.Name = "label6";
      this.label6.Size = new System.Drawing.Size(56, 13);
      this.label6.TabIndex = 28;
      this.label6.Text = "user name";
      // 
      // label7
      // 
      this.label7.AutoSize = true;
      this.label7.Location = new System.Drawing.Point(14, 164);
      this.label7.Name = "label7";
      this.label7.Size = new System.Drawing.Size(37, 13);
      this.label7.TabIndex = 26;
      this.label7.Text = "phone";
      // 
      // updatePhoneTextBox
      // 
      this.updatePhoneTextBox.Location = new System.Drawing.Point(73, 164);
      this.updatePhoneTextBox.Mask = "(999) 000-0000";
      this.updatePhoneTextBox.Name = "updatePhoneTextBox";
      this.updatePhoneTextBox.Size = new System.Drawing.Size(84, 20);
      this.updatePhoneTextBox.TabIndex = 25;
      this.updatePhoneTextBox.TextChanged += new System.EventHandler(this.updateTextBox_TextChanged);
      // 
      // label8
      // 
      this.label8.AutoSize = true;
      this.label8.Location = new System.Drawing.Point(14, 54);
      this.label8.Name = "label8";
      this.label8.Size = new System.Drawing.Size(47, 13);
      this.label8.TabIndex = 24;
      this.label8.Text = "passport";
      // 
      // updateCityComboBox
      // 
      this.updateCityComboBox.FormattingEnabled = true;
      this.updateCityComboBox.Location = new System.Drawing.Point(73, 134);
      this.updateCityComboBox.Name = "updateCityComboBox";
      this.updateCityComboBox.Size = new System.Drawing.Size(148, 21);
      this.updateCityComboBox.TabIndex = 23;
      this.updateCityComboBox.TextChanged += new System.EventHandler(this.updateTextBox_TextChanged);
      // 
      // updateClientButton
      // 
      this.updateClientButton.Location = new System.Drawing.Point(17, 241);
      this.updateClientButton.Name = "updateClientButton";
      this.updateClientButton.Size = new System.Drawing.Size(100, 23);
      this.updateClientButton.TabIndex = 22;
      this.updateClientButton.Text = "update client";
      this.updateClientButton.UseVisualStyleBackColor = true;
      this.updateClientButton.Click += new System.EventHandler(this.updateClientButton_Click);
      // 
      // label11
      // 
      this.label11.AutoSize = true;
      this.label11.Location = new System.Drawing.Point(14, 98);
      this.label11.Name = "label11";
      this.label11.Size = new System.Drawing.Size(44, 13);
      this.label11.TabIndex = 21;
      this.label11.Text = "address";
      // 
      // label12
      // 
      this.label12.AutoSize = true;
      this.label12.Location = new System.Drawing.Point(14, 134);
      this.label12.Name = "label12";
      this.label12.Size = new System.Drawing.Size(23, 13);
      this.label12.TabIndex = 20;
      this.label12.Text = "city";
      // 
      // label13
      // 
      this.label13.AutoSize = true;
      this.label13.Location = new System.Drawing.Point(14, 21);
      this.label13.Name = "label13";
      this.label13.Size = new System.Drawing.Size(33, 13);
      this.label13.TabIndex = 19;
      this.label13.Text = "name";
      // 
      // updateAddressTextBox
      // 
      this.updateAddressTextBox.Location = new System.Drawing.Point(73, 98);
      this.updateAddressTextBox.Name = "updateAddressTextBox";
      this.updateAddressTextBox.Size = new System.Drawing.Size(148, 20);
      this.updateAddressTextBox.TabIndex = 18;
      this.updateAddressTextBox.TextChanged += new System.EventHandler(this.updateTextBox_TextChanged);
      // 
      // updatePassportTextBox
      // 
      this.updatePassportTextBox.Location = new System.Drawing.Point(74, 54);
      this.updatePassportTextBox.Mask = "00 00 000000";
      this.updatePassportTextBox.Name = "updatePassportTextBox";
      this.updatePassportTextBox.Size = new System.Drawing.Size(83, 20);
      this.updatePassportTextBox.TabIndex = 32;
      this.updatePassportTextBox.TextChanged += new System.EventHandler(this.updateTextBox_TextChanged);
      // 
      // updateNameComboBox
      // 
      this.updateNameComboBox.FormattingEnabled = true;
      this.updateNameComboBox.Location = new System.Drawing.Point(73, 21);
      this.updateNameComboBox.Name = "updateNameComboBox";
      this.updateNameComboBox.Size = new System.Drawing.Size(84, 21);
      this.updateNameComboBox.TabIndex = 33;
      this.updateNameComboBox.SelectedIndexChanged += new System.EventHandler(this.updateNameComboBox_SelectedIndexChanged);
      // 
      // ManagerForm
      // 
      this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
      this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
      this.ClientSize = new System.Drawing.Size(666, 466);
      this.Controls.Add(this.tabControl1);
      this.Menu = this.mainMenu1;
      this.Name = "ManagerForm";
      this.Text = "ManagerForm";
      this.Load += new System.EventHandler(this.ManagerForm_Load);
      this.tabControl1.ResumeLayout(false);
      this.addClientPage.ResumeLayout(false);
      this.addClientPage.PerformLayout();
      this.viewFeedbackPage.ResumeLayout(false);
      this.viewFeedbackPage.PerformLayout();
      this.viewFeedbackLayout.ResumeLayout(false);
      this.viewFeedbackLayout.PerformLayout();
      ((System.ComponentModel.ISupportInitialize)(this.feedbackGrid)).EndInit();
      this.updateClientPage.ResumeLayout(false);
      this.updateClientPage.PerformLayout();
      this.ResumeLayout(false);

    }

    #endregion

    private System.Windows.Forms.TabControl tabControl1;
    private System.Windows.Forms.TabPage addClientPage;
    private System.Windows.Forms.TextBox passwordTextBox;
    private System.Windows.Forms.TextBox userNameTextBox;
    private System.Windows.Forms.Label label10;
    private System.Windows.Forms.Label label9;
    private System.Windows.Forms.MaskedTextBox passport;
    private System.Windows.Forms.Label label4;
    private System.Windows.Forms.MaskedTextBox phoneTextBox;
    private System.Windows.Forms.Label passportLabel;
    private System.Windows.Forms.ComboBox city;
    private System.Windows.Forms.Button addClientButton;
    private System.Windows.Forms.Label label3;
    private System.Windows.Forms.Label label2;
    private System.Windows.Forms.Label label1;
    private System.Windows.Forms.TextBox address;
    private System.Windows.Forms.TextBox name;
    private System.Windows.Forms.TabPage viewFeedbackPage;
    private System.Windows.Forms.DataGridView feedbackGrid;
    private System.Windows.Forms.TextBox dateTextBox;
    private System.Windows.Forms.TextBox clientTextBox;
    private System.Windows.Forms.RichTextBox feedbackTextBox;
    private System.Windows.Forms.TextBox ratingTextBox;
    private System.Windows.Forms.TableLayoutPanel viewFeedbackLayout;
    private System.Windows.Forms.MainMenu mainMenu1;
    private System.Windows.Forms.MenuItem menuItem1;
    private System.Windows.Forms.MenuItem logoutMenu;
    private System.Windows.Forms.TabPage updateClientPage;
    private System.Windows.Forms.TextBox updatePasswordTextBox;
    private System.Windows.Forms.TextBox updateUsernameTextBox;
    private System.Windows.Forms.Label label5;
    private System.Windows.Forms.Label label6;
    private System.Windows.Forms.Label label7;
    private System.Windows.Forms.MaskedTextBox updatePhoneTextBox;
    private System.Windows.Forms.Label label8;
    private System.Windows.Forms.ComboBox updateCityComboBox;
    private System.Windows.Forms.Button updateClientButton;
    private System.Windows.Forms.Label label11;
    private System.Windows.Forms.Label label12;
    private System.Windows.Forms.Label label13;
    private System.Windows.Forms.TextBox updateAddressTextBox;
    private System.Windows.Forms.MaskedTextBox updatePassportTextBox;
    private System.Windows.Forms.ComboBox updateNameComboBox;
  }
}