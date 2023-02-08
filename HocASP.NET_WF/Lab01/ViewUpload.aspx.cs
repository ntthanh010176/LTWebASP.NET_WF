using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Lab01
{
    public partial class ViewUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtUpload_Click(object sender, EventArgs e)
        {
            mtvUploadXemUpload.ActiveViewIndex = 0;
        }

        protected void lbtXemUpload_Click(object sender, EventArgs e)
        {
            mtvUploadXemUpload.ActiveViewIndex = 1;
            //b2.Xuất tất cả các tập tin đã upload ra diều khiển lstFile trong View 2
            //tạo đối tượng thư mục với đường dẫn chỉ định
            DirectoryInfo dir = new DirectoryInfo(Server.MapPath("~/Uploads"));
            //lấy danh sách các tập tin trong thư mục
            FileInfo[] fis = dir.GetFiles();
            lstFile.Items.Clear(); //xoá tất cả các mục trong lstFile
                                   //duyệt qua các tập tin và thêm vào điều khiển lstFile trong View 2
            foreach (FileInfo f in fis)
            {
                lstFile.Items.Add(f.Name);
            }
        }

        protected void btUpload_Click(object sender, EventArgs e)
        {
            //bổ sung code xử lý upload tập tin
            if (FUpload.HasFile) //người dùng có chọn tập tin cần upload
            {
               //1. Xu ly upload tap tin vao thu muc Uploads tren server
                //lấy đường dẫn để lưu tập trên server
                string path = Server.MapPath("~/Uploads/") + FUpload.FileName;
                //thực hiện upload
                FUpload.SaveAs(path);
                lbThongbao.Text = "Đã upload thành công";
                
            }
            else
            {
                lbThongbao.Text = "Bạn chưa chọn tập tin cần upload";
            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            mtvUploadXemUpload.ActiveViewIndex = 2;
        }
    }
}