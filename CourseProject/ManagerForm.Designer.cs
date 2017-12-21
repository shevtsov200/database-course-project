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
      this.feedbackGrid = new System.Windows.Forms.DataGridView();
      this.feedbackTextBox = new System.Windows.Forms.RichTextBox();
      this.clientTextBox = new System.Windows.Forms.TextBox();
      this.dateTextBox = new System.Windows.Forms.TextBox();
      this.ratingTextBox = new System.Windows.Forms.TextBox();
      this.tabControl1.SuspendLayout();
      this.addClientPage.SuspendLayout();
      this.viewFeedbackPage.SuspendLayout();
      ((System.ComponentModel.ISupportInitialize)(this.feedbackGrid)).BeginInit();
      this.SuspendLayout();
      // 
      // tabControl1
      // 
      this.tabControl1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
      this.tabControl1.Controls.Add(this.addClientPage);
      this.tabControl1.Controls.Add(this.viewFeedbackPage);
      this.tabControl1.Location = new System.Drawing.Point(13, 13);
      this.tabControl1.Name = "tabControl1";
      this.tabControl1.SelectedIndex = 0;
      this.tabControl1.Size = new System.Drawing.Size(459, 306);
      this.tabControl1.TabIndex = 0;
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
      this.addClientPage.Size = new System.Drawing.Size(451, 280);
      this.addClientPage.TabIndex = 3;
      this.addClientPage.Text = "add client";
      this.addClientPage.UseVisualStyleBackColor = true;
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
      // 
      // name
      // 
      this.name.Location = new System.Drawing.Point(81, 23);
      this.name.Name = "name";
      this.name.Size = new System.Drawing.Size(148, 20);
      this.name.TabIndex = 0;
      // 
      // viewFeedbackPage
      // 
      this.viewFeedbackPage.Controls.Add(this.ratingTextBox);
      this.viewFeedbackPage.Controls.Add(this.dateTextBox);
      this.viewFeedbackPage.Controls.Add(this.clientTextBox);
      this.viewFeedbackPage.Controls.Add(this.feedbackTextBox);
      this.viewFeedbackPage.Controls.Add(this.feedbackGrid);
      this.viewFeedbackPage.Location = new System.Drawing.Point(4, 22);
      this.viewFeedbackPage.Name = "viewFeedbackPage";
      this.viewFeedbackPage.Size = new System.Drawing.Size(451, 280);
      this.viewFeedbackPage.TabIndex = 4;
      this.viewFeedbackPage.Text = "view feedback";
      this.viewFeedbackPage.UseVisualStyleBackColor = true;
      // 
      // feedbackGrid
      // 
      this.feedbackGrid.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
      this.feedbackGrid.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
      this.feedbackGrid.Location = new System.Drawing.Point(3, 158);
      this.feedbackGrid.Name = "feedbackGrid";
      this.feedbackGrid.Size = new System.Drawing.Size(445, 119);
      this.feedbackGrid.TabIndex = 0;
      this.feedbackGrid.SelectionChanged += new System.EventHandler(this.feedbackGrid_SelectionChanged);
      // 
      // feedbackTextBox
      // 
      this.feedbackTextBox.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
      this.feedbackTextBox.Location = new System.Drawing.Point(3, 30);
      this.feedbackTextBox.Name = "feedbackTextBox";
      this.feedbackTextBox.Size = new System.Drawing.Size(445, 122);
      this.feedbackTextBox.TabIndex = 1;
      this.feedbackTextBox.Text = "";
      // 
      // clientTextBox
      // 
      this.clientTextBox.Location = new System.Drawing.Point(4, 4);
      this.clientTextBox.Name = "clientTextBox";
      this.clientTextBox.Size = new System.Drawing.Size(94, 20);
      this.clientTextBox.TabIndex = 2;
      // 
      // dateTextBox
      // 
      this.dateTextBox.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
      this.dateTextBox.Location = new System.Drawing.Point(348, 4);
      this.dateTextBox.Name = "dateTextBox";
      this.dateTextBox.Size = new System.Drawing.Size(100, 20);
      this.dateTextBox.TabIndex = 3;
      // 
      // ratingTextBox
      // 
      this.ratingTextBox.Location = new System.Drawing.Point(105, 4);
      this.ratingTextBox.Name = "ratingTextBox";
      this.ratingTextBox.Size = new System.Drawing.Size(26, 20);
      this.ratingTextBox.TabIndex = 4;
      // 
      // ManagerForm
      // 
      this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
      this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
      this.ClientSize = new System.Drawing.Size(484, 331);
      this.Controls.Add(this.tabControl1);
      this.Name = "ManagerForm";
      this.Text = "ManagerForm";
      this.Load += new System.EventHandler(this.ManagerForm_Load);
      this.tabControl1.ResumeLayout(false);
      this.addClientPage.ResumeLayout(false);
      this.addClientPage.PerformLayout();
      this.viewFeedbackPage.ResumeLayout(false);
      this.viewFeedbackPage.PerformLayout();
      ((System.ComponentModel.ISupportInitialize)(this.feedbackGrid)).EndInit();
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
  }
}