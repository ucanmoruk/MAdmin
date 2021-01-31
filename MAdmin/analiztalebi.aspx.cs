using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MAdmin
{
    public partial class analiztalebi : System.Web.UI.Page
    {
        SqlBaglanti bgl = new SqlBaglanti();

        public static string TalepID;

        protected void listele()
        {
            SqlCommand comm = new SqlCommand("select * from TalepNumune where TalepID = N'"+TalepID+"'", bgl.baglanti());
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
                if (!Page.IsPostBack)
                {

                    Lbl_ad.Text = Session["Kullanici"].ToString();
                    SqlCommand komutID = new SqlCommand("Select * from TalepFatura where TalepID = N'" + TalepID + "'", bgl.baglanti());
                    SqlDataReader drI = komutID.ExecuteReader();
                    while (drI.Read())
                    {
                        txt_ffirma.Text = drI["Firma"].ToString();
                        txt_fadres.Text = drI["Adres"].ToString();
                        txt_fmail.Text = drI["Mail"].ToString();
                        txt_vd.Text = drI["VergiDairesi"].ToString();
                        txt_vn.Text = drI["VergiNo"].ToString();
                    }
                    bgl.baglanti().Close();

                    listele();

                    SqlCommand komut = new SqlCommand("Select * from TalepRaporlama where TalepID = N'" + TalepID + "'", bgl.baglanti());
                    SqlDataReader dr = komut.ExecuteReader();
                    while (dr.Read())
                    {
                        txt_rfirma.Text = dr["Firma"].ToString();
                        txt_radres.Text = dr["Adres"].ToString();
                        txt_ryetkili.Text = dr["Yetkili"].ToString();
                        txt_riletisim.Text = dr["Iletisim"].ToString();
                        txt_uretici.Text = dr["UreticiFirma"].ToString();
                        txt_not.Text = dr["Not"].ToString();
                        Txt_karar.Text = dr["Karar"].ToString();
                        txt_iade.Text = dr["Iade"].ToString();
                        txt_dil.Text = dr["Dil"].ToString();
                    }
                    bgl.baglanti().Close();
                    CheckBox1.Checked = true;
                }
            }
        }

 
    }
}