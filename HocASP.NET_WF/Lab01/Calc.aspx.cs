using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class Calc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTong_Click(object sender, EventArgs e)
        {
            //lấy số 1 và số 2 từ client
            double x = double.Parse(txtNum1.Text);
            double y = double.Parse(txtNum2.Text);
            //tinh ket qua
            double kq = x + y;
            //gui ket qua ve client
            txtResult.Text = kq.ToString();
        }
    }
}