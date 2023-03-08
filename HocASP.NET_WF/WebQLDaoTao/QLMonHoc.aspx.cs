using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebQLDaoTao.Models;

namespace WebQLDaoTao
{
    public partial class QLMonHoc : System.Web.UI.Page
    {
        MonHocDAO mhdao = new MonHocDAO();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //lien ket du lieu cho gvMonhoc
                gvMonhoc.DataSource = mhdao.docTatCa();
                gvMonhoc.DataBind();
            }
        }
    }
}