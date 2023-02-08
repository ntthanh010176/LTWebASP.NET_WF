using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class UploadFile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btXuLy_Click(object sender, EventArgs e)
        {
            //bổ sung code xử lý upload tập tin
            if (FUpload.HasFile) //người dùng có chọn tập tin cần upload
            {
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
    }
}