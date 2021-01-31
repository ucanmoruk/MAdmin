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
    public partial class Anasayfa : System.Web.UI.Page
    {
        SqlBaglanti bgl = new SqlBaglanti();

        int durum;
        protected void GridListele()
        {
            SqlCommand comm = new SqlCommand("select t.ID, t.Tarih, r.Firma, COUNT(n.TalepID) as 'Adet' from Talep t " +
                "inner join TalepNumune n on t.ID= n.TalepID inner join TalepRaporlama r on t.ID = r.TalepID inner join Firma f on t.FirmaKodu = f.Kod " +
                "where f.Firma_Adi = N'"+Lbl_ad.Text+"' and t.Durum = 'Aktif' group by t.ID, n.TalepID, t.Tarih, r.Firma order by Tarih desc", bgl.baglanti());
            SqlDataReader dr = comm.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            bgl.baglanti().Close();
        }

        protected void adminlistele()
        {
            SqlCommand comm = new SqlCommand("select t.ID, t.Tarih, f.Firma_Adi as Firma, COUNT(n.TalepID) as 'Adet' from Talep t " +
               "inner join TalepNumune n on t.ID= n.TalepID inner join Firma f on f.Kod = t.FirmaKodu " +
               "where t.Durum = 'Aktif' group by t.ID, n.TalepID, t.Tarih, f.Firma_Adi order by Tarih desc", bgl.baglanti());
            SqlDataReader dr = comm.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            bgl.baglanti().Close();
        }

        protected void adminsay()
        {
            SqlCommand komutID = new SqlCommand("select Count(RaporNo) from Rapor ", bgl.baglanti());
            SqlDataReader drI = komutID.ExecuteReader();
            while (drI.Read())
            {
                lbl_rapor.Text = drI[0].ToString();
            }
            bgl.baglanti().Close();

            SqlCommand komutI = new SqlCommand("select COUNT(ID) from Talep where Durum = N'Aktif'", bgl.baglanti());
            SqlDataReader dr = komutI.ExecuteReader();
            while (dr.Read())
            {
                lbl_analiz.Text = dr[0].ToString();
            }
            bgl.baglanti().Close();
        }

        protected void listele()
        {
            SqlCommand komutID = new SqlCommand("select Count(RaporNo) from Rapor where FirmaAd = N'" + Lbl_ad.Text + "' ", bgl.baglanti());
            SqlDataReader drI = komutID.ExecuteReader();
            while (drI.Read())
            {
                lbl_rapor.Text = drI[0].ToString();
            }
            bgl.baglanti().Close();

            SqlCommand komutI = new SqlCommand("select COUNT(ID) from Talep where FirmaKodu = N'" + kod + "' and Durum = N'Aktif'", bgl.baglanti());
            SqlDataReader dr = komutI.ExecuteReader();
            while (dr.Read())
            {
                lbl_analiz.Text = dr[0].ToString();
            }
            bgl.baglanti().Close();

            SqlCommand komut = new SqlCommand("select COUNT(ID) from Teklif where FirmaAd = N'" + Session["Kullanici"].ToString() + "' and Durum = N'Onay Bekliyor' ", bgl.baglanti());
            SqlDataReader dra = komut.ExecuteReader();
            while (dra.Read())
            {
                durum = Convert.ToInt32(dra[0].ToString());
            }
            bgl.baglanti().Close();


        }
        string kod;
        protected void Page_Load(object sender, EventArgs e)
        {     

            if (Session["Kullanici"] == null)
            {
                Response.Redirect("giris.aspx");
            }
            else
            {
                Lbl_ad.Text = Session["Kullanici"].ToString();
                kod = Session["Kod"].ToString();
                
                if (Session["Tur"].ToString() == "Admin")
                {
                    divadmin.Visible = true;
                    GridView1.Columns[1].HeaderText= "Talep Sahibi";
                    adminlistele();
                    adminsay();
                }
                else
                {
                    GridListele();
                    listele();
                    divadmin.Visible = false;
                    if (durum == 0)
                    {
                        divteklif.Visible = false;
                    }
                    else
                    {
                        divteklif.Visible = true;
                    }
                }
            }
                

        }

        protected void GridView1_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Pasif") 
            {
                string ID = e.CommandArgument.ToString();

                if (ID != "")
                {
                    SqlCommand komutz = new SqlCommand("update Talep set Durum = @o1 where ID = '"+ID+"' ", bgl.baglanti());
                    komutz.Parameters.AddWithValue("@o1", "Pasif");
                    komutz.ExecuteNonQuery();
                    bgl.baglanti().Close();
                    GridListele();
                    listele();
                }
            }
            else if (e.CommandName == "Goster")
            {
                string ID = e.CommandArgument.ToString();
                analiztalebi.TalepID = ID;
                Response.Redirect("analiztalebi.aspx");
            }
            else
            {
                return;
            }
	        
            
        }

     
    }
}