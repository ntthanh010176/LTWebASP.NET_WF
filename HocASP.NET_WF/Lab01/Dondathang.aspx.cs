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
            //tim kiem de kiem tra ton tai
            int findIndex = TimKiem(ddlBanh.SelectedItem.Text);
            //thêm tên bánh và số lượng đặt vào lstBanh
            if (findIndex == -1) //banh can them khong ton tai trong lstBanh
                lstBanh.Items.Add(ddlBanh.SelectedItem.Text + "(" + txtSoluong.Text + ")");
            else { //ton tai
                //cat chuoi de tach ten banh va so luong
                string[] strArr = lstBanh.Items[findIndex].Text.Split(new char[] { '(', ')' });
                //cong don so luong
                int soluong = int.Parse(strArr[1]) + int.Parse(txtSoluong.Text);
                //gán lại giá trị cho phan tu vi tri findIndex cua lstBanh
                lstBanh.Items[findIndex].Text = ddlBanh.SelectedItem.Text + "(" + soluong + ")";
            }
        }

        private int TimKiem(string tenbanh)
        {
            int chiso = -1; //chi so tim kiem
            //duyet cac phan tu trong lstBanh
            for (int i = 0; i < lstBanh.Items.Count; i++)
            {
                if (lstBanh.Items[i].Text.StartsWith(tenbanh))
                {
                    chiso = i;
                    break;
                }
            }
            return chiso;
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
            string ketqua = "";
            ketqua += "<h2 align='center'>HOÁ ĐƠN ĐẶT HÀNG </h2>";
            //lấy thông tin khách hàng
            ketqua += "<div style='border:1px solid red;padding:10px'>";
            ketqua += "Khách hàng :<i>" + txtHoten.Text + "</i><br>";
            ketqua += "Địa chỉ :<i>" + txtDiachi.Text + "</i><br>";
            ketqua += "Mã số thuế :<i>" + txtMST.Text + "</i><br>";
            //lấy thông tin bánh đặt
            ketqua += "Đặt các loại bánh sau: <br>";
            ketqua += "<table border=1 width=100%>";
            char[] strSep = { '(', ')' };
            foreach (ListItem x in lstBanh.Items)
            {
                string[] strArr = x.Text.Split(strSep);
                ketqua += string.Format("<tr><td>{0}</td><td>{1}</td></tr>", strArr[0], strArr[1]);                
            }
            ketqua += "<table></div>";
            //b2. gui thong tin don hang cho client
            lbThongtin.Text = ketqua;
        }
    }
}