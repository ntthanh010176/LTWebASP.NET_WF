using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class Diadanhdulich : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)//trang được nạp lần đầu
            {
                //khởi tạo dữ liệu cho lstDiaDanh
                lstDiadanh.Items.Add("Nha trang");
                lstDiadanh.Items.Add("Phú Quốc");
                lstDiadanh.Items.Add("Vịnh Hạ Long");
                lstDiadanh.Items.Add("Phong Nha - Kẽ Bàng");
                lstDiadanh.Items.Add("Vũng Tàu");
                lstDiadanh.Items.Add("Phan Thiết - Mũi né");
                //thống kê số địa danh có trong lstDiaDanh
                lbSoDD.Text = lstDiadanh.Items.Count.ToString();
            }

        }

        protected void btChon_Click(object sender, EventArgs e)
        {
            string kq = "Các điểm du lịch bạn chọn là:<ul>";
            //lay cac dia danh ma nguoi dung chon
            foreach (ListItem x in lstDiadanh.Items)
            {
                if (x.Selected)
                {
                    kq += "<li>" + x.Text + "</li>";
                }
            }
            kq += "</ul>";
            //gủi kết quả về client
            lbDiadanh.Text = kq;
            
        }
    }
}