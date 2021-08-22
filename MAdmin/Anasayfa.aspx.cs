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
            SqlCommand comm = new SqlCommand("select t.ID, t.TalepNo, t.Tarih, r.Firma, COUNT(n.TalepID) as 'Adet', t.Durum from Talep t " +
                "inner join TalepNumune n on t.ID= n.TalepID inner join TalepRaporlama r on t.ID = r.TalepID inner join Firma f on t.FirmaKodu = f.Kod " +
                "where f.Firma_Adi = N'"+Lbl_ad.Text+ "' and t.Durum <> 'İptal Edildi' group by t.ID, t.TalepNo, n.TalepID, t.Tarih, r.Firma, t.Durum order by Tarih desc", bgl.baglanti());
            SqlDataReader dr = comm.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            bgl.baglanti().Close();
        }

        protected void adminlistele()
        {
            SqlCommand comm = new SqlCommand("select t.ID, t.TalepNo, t.Tarih, f.Firma_Adi as Firma, COUNT(n.TalepID) as 'Adet', t.Durum from Talep t " +
               "inner join TalepNumune n on t.ID= n.TalepID inner join Firma f on f.Kod = t.FirmaKodu " +
               "where t.Durum <> 'İptal Edildi' group by t.ID, t.TalepNo, n.TalepID, t.Tarih, f.Firma_Adi, t.Durum order by Tarih desc", bgl.baglanti());
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
        protected void analizsay()
        {
            if (Session["Tur"].ToString() == "Proje")
            {
                SqlCommand komutID = new SqlCommand("select Count(RaporNo) from Rapor where Proje = N'" + Lbl_ad.Text + "' ", bgl.baglanti());
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
            }
            else
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
            }
        }
        protected void listele()
        {
           

            SqlCommand komut = new SqlCommand("select COUNT(ID) from TeklifListe where Durum = N'Aktif' and FirmaID in (select ID from Firma where Firma_Adi like N'" + Session["Kullanici"].ToString() + "') ", bgl.baglanti());
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
                    divadmin2.Visible = true;
                    GridView1.Columns[2].HeaderText= "Talep Sahibi";
                    adminlistele();
                    adminsay();
                    divteklif.Visible = false;
                }
                else
                {
                    GridListele();
                    listele();
                    analizsay();
                    divadmin.Visible = false;
                    divadmin2.Visible = false;

                    GridView1.Columns[5].Visible = false;
                    durumdiv.Visible = false;
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
                    komutz.Parameters.AddWithValue("@o1", "İptal Edildi");
                    komutz.ExecuteNonQuery();
                    bgl.baglanti().Close();
                    if (Session["Tur"].ToString() == "Admin")
                    {
                        divadmin.Visible = true;
                        GridView1.Columns[2].HeaderText = "Talep Sahibi";
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
            else if (e.CommandName == "Goster")
            {
                string ID = e.CommandArgument.ToString();
                analiztalebi.TalepID = ID;
                Response.Redirect("analiztalebi.aspx");
            }
            else if (e.CommandName == "Guncelle")
            {
                string ID = e.CommandArgument.ToString();
                if (ID != "")
                {
                    SqlCommand komutz = new SqlCommand("update Talep set Durum = @o1 where ID = '" + ID + "' ", bgl.baglanti());
                    komutz.Parameters.AddWithValue("@o1", durumlistesi.SelectedValue);
                    komutz.ExecuteNonQuery();
                    bgl.baglanti().Close();

                    adminlistele();
                }
            }
            else
            {
                return;
            }   
        }

    }
}