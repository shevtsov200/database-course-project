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
      this.tabPage2 = new System.Windows.Forms.TabPage();
      this.dbConnection = new System.Data.SqlClient.SqlConnection();
      this.tabPage.SuspendLayout();
      this.addClientPage.SuspendLayout();
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
      this.tabPage.Size = new System.Drawing.Size(312, 243);
      this.tabPage.TabIndex = 8;
      // 
      // addClientPage
      // 
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
      this.addClientPage.Size = new System.Drawing.Size(304, 217);
      this.addClientPage.TabIndex = 0;
      this.addClientPage.Text = "tabPage1";
      this.addClientPage.UseVisualStyleBackColor = true;
      // 
      // tabPage2
      // 
      this.tabPage2.Location = new System.Drawing.Point(4, 22);
      this.tabPage2.Name = "tabPage2";
      this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
      this.tabPage2.Size = new System.Drawing.Size(304, 217);
      this.tabPage2.TabIndex = 1;
      this.tabPage2.Text = "tabPage2";
      this.tabPage2.UseVisualStyleBackColor = true;
      // 
      // dbConnection
      // 
      this.dbConnection.ConnectionString = "Integrated Security=SSPI;Initial Catalog=CourseProject;Data Source=ASUSN551JM;";
      this.dbConnection.FireInfoMessageEventOnUserErrors = false;
      this.dbConnection.InfoMessage += new System.Data.SqlClient.SqlInfoMessageEventHandler(this.sqlConnection1_InfoMessage);
      // 
      // Form1
      // 
      this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
      this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
      this.ClientSize = new System.Drawing.Size(342, 367);
      this.Controls.Add(this.tabPage);
      this.Name = "Form1";
      this.Text = "Form1";
      this.Load += new System.EventHandler(this.Form1_Load);
      this.tabPage.ResumeLayout(false);
      this.addClientPage.ResumeLayout(false);
      this.addClientPage.PerformLayout();
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
  }
}

