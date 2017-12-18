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
      this.tabControl1 = new System.Windows.Forms.TabControl();
      this.addEmployeePage = new System.Windows.Forms.TabPage();
      this.bankComboBox = new System.Windows.Forms.ComboBox();
      this.cityComboBox = new System.Windows.Forms.ComboBox();
      this.tabPage2 = new System.Windows.Forms.TabPage();
      this.tabControl1.SuspendLayout();
      this.addEmployeePage.SuspendLayout();
      this.SuspendLayout();
      // 
      // tabControl1
      // 
      this.tabControl1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
      this.tabControl1.Controls.Add(this.addEmployeePage);
      this.tabControl1.Controls.Add(this.tabPage2);
      this.tabControl1.Location = new System.Drawing.Point(13, 13);
      this.tabControl1.Name = "tabControl1";
      this.tabControl1.SelectedIndex = 0;
      this.tabControl1.Size = new System.Drawing.Size(395, 307);
      this.tabControl1.TabIndex = 0;
      // 
      // addEmployeePage
      // 
      this.addEmployeePage.Controls.Add(this.bankComboBox);
      this.addEmployeePage.Controls.Add(this.cityComboBox);
      this.addEmployeePage.Location = new System.Drawing.Point(4, 22);
      this.addEmployeePage.Name = "addEmployeePage";
      this.addEmployeePage.Padding = new System.Windows.Forms.Padding(3);
      this.addEmployeePage.Size = new System.Drawing.Size(387, 281);
      this.addEmployeePage.TabIndex = 0;
      this.addEmployeePage.Text = "add employee";
      this.addEmployeePage.UseVisualStyleBackColor = true;
      // 
      // bankComboBox
      // 
      this.bankComboBox.FormattingEnabled = true;
      this.bankComboBox.Location = new System.Drawing.Point(39, 110);
      this.bankComboBox.Name = "bankComboBox";
      this.bankComboBox.Size = new System.Drawing.Size(121, 21);
      this.bankComboBox.TabIndex = 1;
      // 
      // cityComboBox
      // 
      this.cityComboBox.FormattingEnabled = true;
      this.cityComboBox.Location = new System.Drawing.Point(39, 65);
      this.cityComboBox.Name = "cityComboBox";
      this.cityComboBox.Size = new System.Drawing.Size(121, 21);
      this.cityComboBox.TabIndex = 0;
      this.cityComboBox.SelectedIndexChanged += new System.EventHandler(this.CityComboBox_SelectedIndexChanged);
      // 
      // tabPage2
      // 
      this.tabPage2.Location = new System.Drawing.Point(4, 22);
      this.tabPage2.Name = "tabPage2";
      this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
      this.tabPage2.Size = new System.Drawing.Size(387, 281);
      this.tabPage2.TabIndex = 1;
      this.tabPage2.Text = "tabPage2";
      this.tabPage2.UseVisualStyleBackColor = true;
      // 
      // HumanResourcesForm
      // 
      this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
      this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
      this.ClientSize = new System.Drawing.Size(420, 332);
      this.Controls.Add(this.tabControl1);
      this.Name = "HumanResourcesForm";
      this.Text = "HRForm";
      this.tabControl1.ResumeLayout(false);
      this.addEmployeePage.ResumeLayout(false);
      this.ResumeLayout(false);

    }

    #endregion

    private System.Windows.Forms.TabControl tabControl1;
    private System.Windows.Forms.TabPage addEmployeePage;
    private System.Windows.Forms.TabPage tabPage2;
    private System.Windows.Forms.ComboBox bankComboBox;
    private System.Windows.Forms.ComboBox cityComboBox;
  }
}