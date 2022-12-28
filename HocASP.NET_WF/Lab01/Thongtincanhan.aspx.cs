using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class Thongtincanhan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btDangKy_Click(object sender, EventArgs e)
        {
            string kq = "";
            kq += "<h3>Thông tin về bạn:</h3>";
            kq += "<ul>";
            //lấy thông tin từ client
            kq += "<li>Họ tên:" + txtTen.Text + "</li>";
            if (rdtNam.Checked)
                kq += "<li>Giới tính:" + rdtNam.Text + "</li>";
            else
                kq += "<li>Giới tính:" + rdtNu.Text + "</li>";
            //tuong tu cho cac thong tin con lai                     
            //...tu code lay


            //lay thong tin trinh do
            kq += "<li>Trình độ:" + rdtlTrinhDo.SelectedItem.Text + "</li>";

            kq += "</ul>";
            //gủi thông tin kết quả về client
            lbThongtin.Text = kq;
        }
    }
}