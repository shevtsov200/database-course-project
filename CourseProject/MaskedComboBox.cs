using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CourseProject
{
  public class MaskedComboBox : ComboBox
  {
    private MaskedTextBox maskedTextBox = new MaskedTextBox();
    public MaskedComboBox()
    {
      maskedTextBox.Width = this.Width - 17;
      maskedTextBox.Mask = "0000 0000 0000 0000";
      this.Controls.Add(maskedTextBox);
      this.SelectedIndexChanged += (EventHandler)((sender, e) =>
      { maskedTextBox.Focus(); maskedTextBox.SelectAll(); });
    }

    public override string Text
    {
      get
      {
        return maskedTextBox.Text;
      }
      set
      {
        maskedTextBox.Text = value;
      }
    }
  }
}
