using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class CauChao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkSend_Click(object sender, EventArgs e)
        {
            string msg = "Chào bạn <b>" + txtHoten.Text + "</b>";
            msg += "<br> Chúc mừng bạn đến với môn học <b>Lập trình Web với ASP.NET </b>";
            //gủi msg về client
            lbChao.Text = msg;
        }
    }
}