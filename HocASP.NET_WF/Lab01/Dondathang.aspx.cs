using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class Dondathang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btThem_Click(object sender, EventArgs e)
        {
            if (txtSoluong.Text=="")
            {
                lbLoi.Text = "Chưa nhập số lượng";
                return;
            }

            lbLoi.Text = "";
            //thêm tên bánh và số lượng đặt vào lstBanh
            lstBanh.Items.Add(ddlBanh.SelectedItem.Text + "(" + txtSoluong.Text + ")");
        }

        protected void btXoa_Click(object sender, ImageClickEventArgs e)
        {
            //duyet cac muc duoc chon trong lstBanh và xoá đi
            for (int i = lstBanh.Items.Count - 1; i >= 0; i--)
            {
                if (lstBanh.Items[i].Selected) //neu muc thu i duoc chon
                {
                    //xoá khoi lstBanh
                    lstBanh.Items.RemoveAt(i);
                }
            }

        }

        protected void btInhoadon_Click(object sender, EventArgs e)
        {
            //b1. thu thap thong tin don hang tu client
            // tu code...
            //b2. gui thong tin don hang cho client
            // tu code...
        }
    }
}