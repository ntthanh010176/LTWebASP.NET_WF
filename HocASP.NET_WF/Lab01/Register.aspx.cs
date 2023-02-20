using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btDangky_Click(object sender, EventArgs e)
        {
            string thongtin = "<ul>";
            thongtin += "<li>Tên đăng nhập:" + txtTenDN.Text;
            thongtin += "<li>Mật khẩu:" + txtMatKhau.Text;
            thongtin += "<li>Tuổi:" + txtTuoi.Text;
            thongtin += "<li> Email:" + txtEmail.Text;
            thongtin += "<li>Số điện thoại:" + txtSDT.Text;
            thongtin += "<ul>";
            
            lbThongtin.Text = thongtin;
        }
    }
}