using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebQLDaoTao.Models;

namespace WebQLDaoTao
{
    public partial class MonHoc : System.Web.UI.Page
    {
        MonHocDAO mhDAO = new MonHocDAO();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                NapDuLieu();
            }
        }

        protected void gvMonHoc_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //bat che do hieu chinh cho dong hien hanh
            gvMonHoc.EditIndex = e.NewEditIndex;
            //lien ket nguon lai nguon du lieu cho gvmonhoc
            NapDuLieu();
        }

        protected void gvMonHoc_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
             gvMonHoc.EditIndex = -1;
            //lien ket nguon lai nguon du lieu cho gvmonhoc
            NapDuLieu();
        }

        protected void gvMonHoc_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //lay mamh
            string mamh = gvMonHoc.DataKeys[e.RowIndex].Value.ToString();           
            //lay tenmh
            string tenmh = ((TextBox)gvMonHoc.Rows[e.RowIndex].Cells[0].Controls[0]).Text;
            //lay sotiet
            int sotiet = int.Parse(((TextBox)gvMonHoc.Rows[e.RowIndex].Cells[1].Controls[0]).Text);
            
            //dung phuong thuc ho tro cap nhat mon hoc cua lop thu vien MonHocDAO
            mhDAO.Update(mamh, tenmh, sotiet);
            //bat cho de dong hien hanh sang che do binh thuong
            gvMonHoc.EditIndex = -1;
            //lien ket lai du lieu cho gvMomHoc
            NapDuLieu();

        }

        protected void gvMonHoc_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                //lay mamh
                string mamh = gvMonHoc.DataKeys[e.RowIndex].Value.ToString();
                //thuc hien xoa mon hoc
                mhDAO.Delete(mamh);
                //lien ket lai du lieu cho gvMomHoc
                NapDuLieu();
                Response.Write("<script> alert('Xoá thành công') </script>");
            }
            catch (Exception ex) {
                Response.Write("<script> alert('Môn học này đã có sinh viên đăng ký. Không thể xoá') </script>");
            }

        }

        protected void gvMonHoc_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            //gán lại chỉ số trang mới cho gvMopnhoc
            gvMonHoc.PageIndex = e.NewPageIndex;
            //lien ket lai lai du lieu
            NapDuLieu();
        }

        public void NapDuLieu()
        {
            gvMonHoc.DataSource = mhDAO.docTatCa();
            gvMonHoc.DataBind();
        }
    }
}