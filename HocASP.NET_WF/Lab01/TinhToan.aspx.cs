using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class TinhToan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btCong_Click(object sender, EventArgs e)
        {
            //lấy giá trị số thứ 1 và số thứ 2 từ client chuyển sang số
            double x = double.Parse(txtSo1.Text);
            double y = double.Parse(txtSo2.Text);
            //tính tong 2 số
            double kq = x + y;
            //gui ket qua ve client
            txtKetQua.Text = kq.ToString();
        }
        protected void btTru_Click(object sender, EventArgs e)
        {
            //lấy giá trị số thứ 1 và số thứ 2 từ client chuyển sang số
            double x = double.Parse(txtSo1.Text);
            double y = double.Parse(txtSo2.Text);
            //tính hiệu 2 số
            double kq = x - y;
            //gui ket qua ve client
            txtKetQua.Text = kq.ToString();
        }

        protected void btNhan_Click(object sender, EventArgs e)
        {
            //lấy giá trị số thứ 1 và số thứ 2 từ client chuyển sang số
            double x = double.Parse(txtSo1.Text);
            double y = double.Parse(txtSo2.Text);
            //tính tích 2 số
            double kq = x * y;
            //gui ket qua ve client
            txtKetQua.Text = kq.ToString();
        }

        protected void btChia_Click(object sender, EventArgs e)
        {
            //lấy giá trị số thứ 1 và số thứ 2 từ client chuyển sang số
            double x = double.Parse(txtSo1.Text);
            double y = double.Parse(txtSo2.Text);
            //tính thương 2 số
            double kq = x / y;
            //gui ket qua ve client
            txtKetQua.Text = kq.ToString();
        }
    }
}