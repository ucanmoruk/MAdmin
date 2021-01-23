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

        protected void listele()
        {
            SqlCommand comm = new SqlCommand("select * from Teklif where FirmaAd = N'"+Lbl_ad.Text+"' order by Tarih desc", bgl.baglanti());
            SqlDataReader dr = comm.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            bgl.baglanti().Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Kullanici"] == null)
            {
                Response.Redirect("giris.aspx");
            }
               
            else
            {
                Lbl_ad.Text = Session["Kullanici"].ToString();
                listele();
            }
                

        }
    }
}