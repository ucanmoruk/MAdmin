using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MAdmin
{
    public partial class FirmaEkle : System.Web.UI.Page
    {
        SqlBaglanti bgl = new SqlBaglanti();

        protected void listele()
        {
            SqlCommand comm = new SqlCommand("select * from Firma order by Kod desc", bgl.baglanti());
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
                Div1.Visible = false;
                Lbl_ad.Text = Session["Kullanici"].ToString();
                listele();
            }
        }
        string parola;

        protected void parolaolustur()
            {
                char[] cr = "0123456789abcdefghijklmnopqrstuvwxyz".ToCharArray();
                string result = string.Empty;
                Random r = new Random();
                for (int i = 0; i < 6; i++)
                {
                    parola += cr[r.Next(0, cr.Length - 1)].ToString();
                }



            }

        protected void Btn_Firma_Click(object sender, EventArgs e)
            {
                if (Btn_Firma.Text == "Firma Ekle")
                {
                    parolaolustur();


                    SqlCommand komut = new SqlCommand("insert into Firma (Firma_Adi, Adres, Vergi_Dairesi,Vergi_No,Telefon,Mail,Kod,Parola,Tur) " +
                        " values (@a1,@a2,@a3,@a4,@a5,@a6,@a7,@a8,@a9)", bgl.baglanti());
                    komut.Parameters.AddWithValue("@a1", txt_firma.Text);
                    komut.Parameters.AddWithValue("@a2", txt_adres.Text);
                    komut.Parameters.AddWithValue("@a3", txt_vd.Text);
                    komut.Parameters.AddWithValue("@a4", txt_vn.Text);
                    komut.Parameters.AddWithValue("@a5", txt_telefon.Text);
                    komut.Parameters.AddWithValue("@a6", Txt_mail.Text);
                    komut.Parameters.AddWithValue("@a7", txt_firmakod.Text);
                    komut.Parameters.AddWithValue("@a8", parola);
                    komut.Parameters.AddWithValue("@a9", tur.Text);
                    komut.ExecuteNonQuery();

                lbl_parola.Text = parola;
                lbl_firma.Text = txt_firma.Text;
                lbl_kod.Text = txt_firmakod.Text;

                txt_firma.Text = "";
                    txt_adres.Text = "";
                    txt_vn.Text = "";
                    txt_vd.Text = "";
                    txt_telefon.Text = "";
                    Txt_mail.Text = "";
                    txt_firmakod.Text = "";



                    Div1.Visible = true;
                    listele();
                }
                else
                {

                }


            }

        protected void Button1_Click(object sender, EventArgs e)
            {
                Div1.Visible = false;
            }

        protected void arama()
            {
                SqlCommand comm = new SqlCommand("select * from Firma where Firma_Adi like '%" + txtarama.Text + "%'", bgl.baglanti());
                SqlDataReader dr = comm.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                bgl.baglanti().Close();
            }

        protected void txtarama_TextChanged(object sender, EventArgs e)
            {

                if (txtarama.Text != null)
                {
                    arama();
                }
                else
                {
                    listele();
                }
            }



        protected void gvProducts_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
          
        }
    }
}