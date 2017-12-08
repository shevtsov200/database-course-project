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
      this.button1 = new System.Windows.Forms.Button();
      this.city = new System.Windows.Forms.ComboBox();
      this.tabPage = new System.Windows.Forms.TabControl();
      this.addClientPage = new System.Windows.Forms.TabPage();
      this.passportLabel = new System.Windows.Forms.Label();
      this.tabPage2 = new System.Windows.Forms.TabPage();
      this.dbConnection = new System.Data.SqlClient.SqlConnection();
      this.openAccountPassportLabel = new System.Windows.Forms.Label();
      this.phoneTextBox = new System.Windows.Forms.MaskedTextBox();
      this.label4 = new System.Windows.Forms.Label();
      this.passport = new System.Windows.Forms.MaskedTextBox();
      this.openAccountPassport = new System.Windows.Forms.MaskedTextBox();
      this.label5 = new System.Windows.Forms.Label();
      this.maskedTextBox1 = new System.Windows.Forms.MaskedTextBox();
      this.button2 = new System.Windows.Forms.Button();
      this.tabPage.SuspendLayout();
      this.addClientPage.SuspendLayout();
      this.tabPage2.SuspendLayout();
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
      // button1
      // 
      this.button1.Location = new System.Drawing.Point(81, 147);
      this.button1.Name = "button1";
      this.button1.Size = new System.Drawing.Size(100, 23);
      this.button1.TabIndex = 6;
      this.button1.Text = "add client";
      this.button1.UseVisualStyleBackColor = true;
      this.button1.Click += new System.EventHandler(this.button1_Click);
      // 
      // city
      // 
      this.city.FormattingEnabled = true;
      this.city.Location = new System.Drawing.Point(81, 62);
      this.city.Name = "city";
      this.city.Size = new System.Drawing.Size(148, 21);
      this.city.TabIndex = 7;
      // 
      // tabPage
      // 
      this.tabPage.Controls.Add(this.addClientPage);
      this.tabPage.Controls.Add(this.tabPage2);
      this.tabPage.Location = new System.Drawing.Point(12, 12);
      this.tabPage.Name = "tabPage";
      this.tabPage.SelectedIndex = 0;
      this.tabPage.Size = new System.Drawing.Size(397, 243);
      this.tabPage.TabIndex = 8;
      // 
      // addClientPage
      // 
      this.addClientPage.Controls.Add(this.passport);
      this.addClientPage.Controls.Add(this.label4);
      this.addClientPage.Controls.Add(this.phoneTextBox);
      this.addClientPage.Controls.Add(this.passportLabel);
      this.addClientPage.Controls.Add(this.city);
      this.addClientPage.Controls.Add(this.button1);
      this.addClientPage.Controls.Add(this.label3);
      this.addClientPage.Controls.Add(this.label2);
      this.addClientPage.Controls.Add(this.label1);
      this.addClientPage.Controls.Add(this.address);
      this.addClientPage.Controls.Add(this.name);
      this.addClientPage.Location = new System.Drawing.Point(4, 22);
      this.addClientPage.Name = "addClientPage";
      this.addClientPage.Padding = new System.Windows.Forms.Padding(3);
      this.addClientPage.Size = new System.Drawing.Size(389, 217);
      this.addClientPage.TabIndex = 0;
      this.addClientPage.Text = "add client";
      this.addClientPage.UseVisualStyleBackColor = true;
      this.addClientPage.Click += new System.EventHandler(this.addClientPage_Click);
      // 
      // passportLabel
      // 
      this.passportLabel.AutoSize = true;
      this.passportLabel.Location = new System.Drawing.Point(235, 23);
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
      this.tabPage2.Size = new System.Drawing.Size(389, 217);
      this.tabPage2.TabIndex = 1;
      this.tabPage2.Text = "open account";
      this.tabPage2.UseVisualStyleBackColor = true;
      this.tabPage2.Click += new System.EventHandler(this.tabPage2_Click);
      // 
      // dbConnection
      // 
      this.dbConnection.ConnectionString = "Integrated Security=SSPI;Initial Catalog=CourseProject;Data Source=ASUSN551JM;";
      this.dbConnection.FireInfoMessageEventOnUserErrors = false;
      this.dbConnection.InfoMessage += new System.Data.SqlClient.SqlInfoMessageEventHandler(this.sqlConnection1_InfoMessage);
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
      // phoneTextBox
      // 
      this.phoneTextBox.Location = new System.Drawing.Point(288, 62);
      this.phoneTextBox.Mask = "(999) 000-0000";
      this.phoneTextBox.Name = "phoneTextBox";
      this.phoneTextBox.Size = new System.Drawing.Size(84, 20);
      this.phoneTextBox.TabIndex = 10;
      // 
      // label4
      // 
      this.label4.AutoSize = true;
      this.label4.Location = new System.Drawing.Point(238, 69);
      this.label4.Name = "label4";
      this.label4.Size = new System.Drawing.Size(37, 13);
      this.label4.TabIndex = 11;
      this.label4.Text = "phone";
      // 
      // passport
      // 
      this.passport.Location = new System.Drawing.Point(289, 22);
      this.passport.Mask = "00 00 000000";
      this.passport.Name = "passport";
      this.passport.Size = new System.Drawing.Size(83, 20);
      this.passport.TabIndex = 12;
      // 
      // openAccountPassport
      // 
      this.openAccountPassport.Location = new System.Drawing.Point(72, 23);
      this.openAccountPassport.Mask = "00 00 000000";
      this.openAccountPassport.Name = "openAccountPassport";
      this.openAccountPassport.Size = new System.Drawing.Size(74, 20);
      this.openAccountPassport.TabIndex = 3;
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
      // maskedTextBox1
      // 
      this.maskedTextBox1.Location = new System.Drawing.Point(72, 64);
      this.maskedTextBox1.Mask = "00.00%";
      this.maskedTextBox1.Name = "maskedTextBox1";
      this.maskedTextBox1.Size = new System.Drawing.Size(56, 20);
      this.maskedTextBox1.TabIndex = 8;
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
      // Form1
      // 
      this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
      this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
      this.ClientSize = new System.Drawing.Size(485, 347);
      this.Controls.Add(this.tabPage);
      this.Name = "Form1";
      this.Text = "Form1";
      this.Load += new System.EventHandler(this.Form1_Load);
      this.tabPage.ResumeLayout(false);
      this.addClientPage.ResumeLayout(false);
      this.addClientPage.PerformLayout();
      this.tabPage2.ResumeLayout(false);
      this.tabPage2.PerformLayout();
      this.ResumeLayout(false);

    }

    #endregion

    private System.Windows.Forms.TextBox name;
    private System.Windows.Forms.TextBox address;
    private System.Windows.Forms.Label label1;
    private System.Windows.Forms.Label label2;
    private System.Windows.Forms.Label label3;
    private System.Windows.Forms.Button button1;
    private System.Windows.Forms.ComboBox city;
    private System.Windows.Forms.TabControl tabPage;
    private System.Windows.Forms.TabPage addClientPage;
    private System.Windows.Forms.TabPage tabPage2;
    private System.Data.SqlClient.SqlConnection dbConnection;
    private System.Windows.Forms.Label passportLabel;
    private System.Windows.Forms.Label openAccountPassportLabel;
    private System.Windows.Forms.Label label4;
    private System.Windows.Forms.MaskedTextBox phoneTextBox;
    private System.Windows.Forms.MaskedTextBox passport;
    private System.Windows.Forms.MaskedTextBox openAccountPassport;
    private System.Windows.Forms.MaskedTextBox maskedTextBox1;
    private System.Windows.Forms.Label label5;
    private System.Windows.Forms.Button button2;
  }
}

