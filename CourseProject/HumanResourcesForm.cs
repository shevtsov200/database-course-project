using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;


namespace CourseProject
{
  public partial class HumanResourcesForm : Form
  {
    public HumanResourcesForm()
    {
      InitializeComponent();

      Program.connectionQuery.OpenConnection();

      cityComboBox.DisplayMember = "name";
      cityComboBox.ValueMember = "city_id";
      cityComboBox.DataSource = Program.connectionQuery.DataSet("SelectCities");

      Program.connectionQuery.CloseConnection();
    }

    private void CityComboBox_SelectedIndexChanged(object sender, EventArgs e)
    {
      populateWithBanksFromCity();
    }

    private void populateWithBanksFromCity()
    {
      bankComboBox.DataSource = null;
      Program.connectionQuery.OpenConnection();
      SqlParameter[] commandParameters =
      {
          new SqlParameter() { ParameterName =  "@cityId", SqlDbType = SqlDbType.Int, Value = cityComboBox.SelectedValue}
      };
      bankComboBox.DisplayMember = "name";
      bankComboBox.ValueMember = "bank_id";
      bankComboBox.DataSource = Program.connectionQuery.DataSet("SelectBanksWhereCity", commandParameters);

      Program.connectionQuery.CloseConnection();
    }
  }
}
