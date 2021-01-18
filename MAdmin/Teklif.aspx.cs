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
    public partial class Teklif : System.Web.UI.Page
    {
        SqlBaglanti bgl = new SqlBaglanti();

       

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("select Aciklama, Fiyat, Birim from Teklif", bgl.baglanti());
            SqlDataAdapter reader = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            reader.Fill(dt);
            myRepeater.DataSource = dt;
            myRepeater.DataBind();

            try
            {
               

            }
            catch
            {
                Response.Write("Veri okuma işleminde hata meydana geldi!");
            }
            finally
            {
                bgl.baglanti().Close();
            }

        }
    }
}