using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MAdmin
{
    public partial class giris : System.Web.UI.Page
    {
        SqlBaglanti bgl = new SqlBaglanti();

        protected void Page_Load(object sender, EventArgs e)
        {
            theDiv.Visible = false;
        }

        protected void btn_giris_Click(object sender, EventArgs e)
        {
            

            SqlCommand detay = new SqlCommand("Select * from Firma where Kod = N'" + txt_kod.Text + "' and Parola =  N'" + txt_parola.Text + "' ", bgl.baglanti());
            SqlDataReader drd = detay.ExecuteReader();

            if (drd.Read())
            {
                Session["Kullanici"] = drd["Firma_Adi"].ToString();
                Session["Kod"] = drd["Kod"].ToString();
                Session["Tur"] = drd["Tur"].ToString();
                Session["ID"] = drd["ID"].ToString();
                Response.Redirect("Anasayfa.aspx?Kod="+txt_kod.Text);

                //SqlCommand komutID = new SqlCommand("Select * from Kullanici where Kadi = N'" + kullaniciadi + "'", bgl.baglanti());
                //SqlDataReader drI = komutID.ExecuteReader();
                //while (drI.Read())
                //{
                //    kullaniciID = Convert.ToInt32(drI["ID"]);
                //    ad = drI["Ad"].ToString();
                //    soyad = drI["Soyad"].ToString();
                //    gorev = drI["Gorev"].ToString();
                //}
                //bgl.baglanti().Close();
                //f2 = new Mask.Main();
                //f2.FormClosing += F2_FormClosing;
                //f2.ShowDialog();

            }
            else
            {
               theDiv.Visible = true;
            }
            bgl.baglanti().Close();
        }

        protected void Btn_kapat_Click(object sender, EventArgs e)
        {
            theDiv.Visible = false;
        }
    }
}