using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MAdmin
{
    public partial class profil : System.Web.UI.Page
    {
        SqlBaglanti bgl = new SqlBaglanti();
        protected string parola;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici"] == null)
            {
                Response.Redirect("giris.aspx");
            }               
            else
            {
                theDiv.Visible = false;
                Div1.Visible = false;
                Lbl_ad.Text = Session["Kullanici"].ToString();
                txt_ad.Text = Session["Kullanici"].ToString();
                string kod = Session["Kod"].ToString();
                SqlCommand komutID = new SqlCommand("Select * from Firma where Firma_Adi = N'" + Lbl_ad.Text + "' and Kod=N'"+kod+"' ", bgl.baglanti());
                SqlDataReader drI = komutID.ExecuteReader();
                while (drI.Read())
                {
                    txt_adres.Text = drI["Adres"].ToString();
                    txt_vergid.Text = drI["Vergi_Dairesi"].ToString();
                    txt_vergin.Text = drI["Vergi_No"].ToString();
                    txt_mail.Text = drI["Mail"].ToString();
                    txt_telefon.Text = drI["Telefon"].ToString();
                    parola = drI["Parola"].ToString();
             
                }
                bgl.baglanti().Close();

            }

                      

        }

        protected void Btn_Firma_Click(object sender, EventArgs e)
        {          
                string kod = Session["Kod"].ToString();
                SqlCommand komut = new SqlCommand("update Firma set Firma_Adi=@a1, Adres=@a2, Vergi_Dairesi=@a3, Vergi_No=@a4, Telefon=@a5, Mail=@a6 where Kod=N'" + kod + "'", bgl.baglanti());
                komut.Parameters.AddWithValue("@a1", txt_ad.Text);
                komut.Parameters.AddWithValue("@a2", txt_adres.Text);
                komut.Parameters.AddWithValue("@a3", txt_vergid.Text);
                komut.Parameters.AddWithValue("@a4", txt_vergin.Text);
                komut.Parameters.AddWithValue("@a5", txt_telefon.Text);
                komut.Parameters.AddWithValue("@a6", txt_mail.Text);
                komut.ExecuteNonQuery();

               Div1.Visible = true;


        }

        protected void btn_parola_Click(object sender, EventArgs e)
        {
            if (parola == Txt_old.Text)
            {
                if (Txt_new1.Text == Txt_new2.Text)
                {
                    string kod = Session["Kod"].ToString();
                    SqlCommand komut = new SqlCommand("update Firma set Parola=@a1 where Kod=N'" + kod + "'", bgl.baglanti());
                    komut.Parameters.AddWithValue("@a1", Txt_new1.Text);
                    komut.ExecuteNonQuery();
                    Txt_old.Text = "";
                    Txt_new1.Text = "";
                    Txt_new2.Text = "";
                    theDiv.Visible = true;
                }
                else
                {
                    Response.Write("<script>alert('Yeni parolanızın birbiri ile uyumlu olması gerekiyor!!')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Parolanızı yanlış girdiniz!')</script>");
               
            }
        }

        protected void Btn_kapat_Click(object sender, EventArgs e)
        {
            theDiv.Visible = false;
        }

        protected void Btn_kapat2_Click(object sender, EventArgs e)
        {
            Div1.Visible = false;
        }
    }
}