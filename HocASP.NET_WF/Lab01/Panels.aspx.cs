using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class Panels : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) //trang load lần đầu
            {
                //khởi tạo dữ liệu cho blNgheNghiep
                for (int i = 1; i <= 50; i++)
                {
                    blNgheNghiep.Items.Add("Nghề " + i);
                }
            }
            else //khi trang được load lại (PostBack)
            {

                //xữ lý ần/hiện plSoThich , plNgheNghiep theo trang thái của chkSoThich, chkNgheNghiep
                plSothich.Visible = chkSoThich.Checked;
                plNghenghiep.Visible = chkNghenghiep.Checked;
            }

        }

        
    }
}