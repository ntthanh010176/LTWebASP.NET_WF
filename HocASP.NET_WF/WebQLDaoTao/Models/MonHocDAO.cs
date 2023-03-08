using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace WebQLDaoTao.Models
{
    public class MonHocDAO
    {
        public List<MonHoc> docTatCa()
        {
            List<MonHoc> dsKetQua = new List<MonHoc>();
            //truy xuat CSDL de doc tat ca mon hoc
            //1.Mo ket noi CSDL
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WebQLDaoTao_ConStr"].ConnectionString);
            conn.Open();
            //2.tao truy van
            SqlCommand cmd = new SqlCommand("select * from Monhoc", conn);
            //3.thuc thi ket qua;
            SqlDataReader dr = cmd.ExecuteReader();
            //4.xu ly ket qua tra ve
            while (dr.Read())
            {
                //tao doi tuong mon hoc
                MonHoc mh = new MonHoc
                {
                    MaMH = dr["MaMH"].ToString(),
                    TenMH = dr["TenMH"].ToString(),
                    SoTiet = int.Parse(dr["SoTiet"].ToString())
                };
                //add vao dsMonHoc
                dsKetQua.Add(mh);
            }
            return dsKetQua;
        }

        //--------phuong thuc cap nhat thong tin mon hoc-----------------
        public int Update(string mamh, string tenmh, int sotiet)
        {
            //1.Mo ket noi CSDL
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WebQLDaoTao_ConStr"].ConnectionString);
            conn.Open();
            //2.tao truy van
            SqlCommand cmd = new SqlCommand("update monhoc set tenmh=@tenmh, sotiet=@sotiet where mamh = @mamh", conn);
            cmd.Parameters.AddWithValue("@tenmh", tenmh);
            cmd.Parameters.AddWithValue("@sotiet", sotiet);
            cmd.Parameters.AddWithValue("@mamh", mamh);
            //3.thuc thi ket qua;
            return cmd.ExecuteNonQuery();
        }

        //--------phuong thuc xoá mon hoc-----------------
        public int Delete(string mamh)
        {
            //1.Mo ket noi CSDL
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WebQLDaoTao_ConStr"].ConnectionString);
            conn.Open();
            //2.tao truy van
            SqlCommand cmd = new SqlCommand("delete from monhoc where mamh = @mamh", conn);        
            cmd.Parameters.AddWithValue("@mamh", mamh);
            //3.thuc thi ket qua;
            return cmd.ExecuteNonQuery();
        }




    }
}