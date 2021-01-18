using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MAdmin
{
    public partial class PageTeklif : System.Web.UI.Page
    {
        SqlBaglanti bgl = new SqlBaglanti();

        protected void Page_Load(object sender, EventArgs e)
        {
            //SqlCommand comm = new SqlCommand("select Aciklama, Fiyat, Birim from Teklif", bgl.baglanti());
            //SqlDataAdapter reader = new SqlDataAdapter(comm);
            //DataTable dt = new DataTable();
            //reader.Fill(dt);
            ////myRepeater.DataSource = dt;
            ////myRepeater.DataBind();

            //try
            //{


            //}
            //catch
            //{
            //    Response.Write("Veri okuma işleminde hata meydana geldi!");
            //}
            //finally
            //{
            //    bgl.baglanti().Close();
            //}

            SqlCommand comm = new SqlCommand("select Aciklama, Fiyat, Birim from Teklif where Tur=N'Paket'", bgl.baglanti());
            SqlDataReader dr = comm.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            bgl.baglanti().Close();

            SqlCommand com = new SqlCommand("select Aciklama, Metot, Fiyat, Birim from Teklif where Tur=N'Analiz'", bgl.baglanti());
            SqlDataReader da = com.ExecuteReader();
            GridView2.DataSource = da;
            GridView2.DataBind();
            bgl.baglanti().Close();

        }
    }
}