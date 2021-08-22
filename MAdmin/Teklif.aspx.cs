using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
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
            SqlCommand comm = new SqlCommand("select tl.ID as 'ID', tl.TeklifNo as 'TeklifNo', tl.Tarih, k.Ad, f.Firma_Adi as 'Proje', f.Firma_Adi as 'Firma', tl.Aciklama,  tl.Durum from TeklifListe tl " +
                " inner join Kullanici k on k.ID = tl.PlasiyerID inner join Firma f on f.ID = tl.FirmaID " +
                " where f.Firma_Adi = N'"+Lbl_ad.Text+ "' and tl.Durum <> 'Pasif' and tl.Tarih > '2021' order by tl.Tarih desc", bgl.baglanti());
            SqlDataReader dr = comm.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            bgl.baglanti().Close();

            GridView1.Columns[3].Visible = false;
            GridView1.Columns[4].Visible = false;
        }

        protected void adminlistele()
        {
            SqlCommand comm = new SqlCommand("select tl.ID as 'ID', tl.TeklifNo as 'TeklifNo', tl.Tarih, k.Ad, f2.Firma_Adi as 'Proje', f.Firma_Adi as 'Firma',  tl.Aciklama,  tl.Durum from TeklifListe tl " +
                " inner join Kullanici k on k.ID = tl.PlasiyerID inner join Firma f on f.ID = tl.FirmaID inner join Firma f2 on f2.ID = tl.ProjeID " +
                " where tl.Tarih > '2021' and tl.Durum <> 'Pasif' order by tl.Tarih desc", bgl.baglanti());
            SqlDataReader dr = comm.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            bgl.baglanti().Close();
        }

        protected void projelistele()
        {
            SqlCommand comm = new SqlCommand("select tl.ID as 'ID', tl.TeklifNo as 'TeklifNo', tl.Tarih, k.Ad, f2.Firma_Adi as 'Proje', f2.Firma_Adi as 'Firma', tl.Aciklama,  tl.Durum  from TeklifListe tl " +
                           " inner join Firma f on f.ID = tl.ProjeID inner join Firma f2 on f2.ID = tl.FirmaID inner join Kullanici k on k.ID = tl.PlasiyerID " +
                           " where tl.Tarih > '2021' and tl.Durum <> 'Pasif' and f.Firma_Adi = N'" + Lbl_ad.Text + "'  order by tl.Tarih desc", bgl.baglanti());
            SqlDataReader dr = comm.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            bgl.baglanti().Close();

            GridView1.Columns[4].Visible = false;
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
                if (Session["Tur"].ToString() == "Admin")
                {                    
                    adminlistele();
                    teklifdiv.Visible = false;
                }
                else if (Session["Tur"].ToString() == "Proje")
                {
                    projelistele();
                    teklifdiv.Visible = false;
                }
                else
                {
                    listele();
                    teklifdiv.Visible = false;
                }
            }
                

        }

        int id;
        int teklifnu;
        protected void update()
        {
            SqlCommand komut = new SqlCommand("update TeklifListe set Durum = @r1 where ID = '" + id + "' ", bgl.baglanti());
            komut.Parameters.AddWithValue("@r1", "Onaylandı");
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {            

            if (e.CommandName == "Onayla")
            {
                id = Convert.ToInt32(e.CommandArgument);
                update();
                listele();
            }
            else if (e.CommandName == "goster")
            {               
               teklifnu = Convert.ToInt32(e.CommandArgument);             
               teklifdiv.Visible = true;
               teklifbul();
               teklifdetay();
                          
                
           

            }
            else
            {
                return;
            }



        }

        int analizID;
        protected void teklifdetay()
        {
            SqlCommand detay = new SqlCommand("Select COUNT(AnalizID) from TeklifDetay where TeklifNo = N'" + teklifnu + "' ", bgl.baglanti());
            SqlDataReader drd = detay.ExecuteReader();

            if (drd.Read())
            {
                analizID = Convert.ToInt32(drd[0]);
                
            }

            bgl.baglanti().Close();

            if (analizID == 0)
            {
                SqlCommand comm = new SqlCommand("SELECT a.Tur as 'Fiyat Teklifi', t.Aciklama as 'Açıklama', t.BirimFiyat as 'Fiyat', t.FiyatBirim as 'Birim' from TeklifDetay t " +
                    " inner join Numune_Grup a on a.ID = t.PaketID  where t.TeklifNo = N'" + teklifnu + "' order by a.Tur asc ", bgl.baglanti());
                SqlDataReader dr = comm.ExecuteReader();
                GridView2.DataSource = dr;
                GridView2.DataBind();
                bgl.baglanti().Close();
            }
            else
            {
                SqlCommand comm = new SqlCommand("SELECT a.Analiz_Adi as 'Fiyat Teklifi', t.Aciklama as 'Açıklama',  t.BirimFiyat as 'Fiyat', t.FiyatBirim as 'Birim' from TeklifDetay t " +
                    " inner join Analizler a on a.ID = t.AnalizID  where t.TeklifNo = N'" + teklifnu + "' order by a.Analiz_Adi asc ", bgl.baglanti());
                SqlDataReader dr = comm.ExecuteReader();
                GridView2.DataSource = dr;
                GridView2.DataBind();
                bgl.baglanti().Close();
            }

        }

        protected void teklifbul()
        {
            SqlCommand detay = new SqlCommand("select t.Tarih, k.Ad from TeklifListe t inner join Kullanici k on k.ID = t.PlasiyerID where t.TeklifNo = N'" + teklifnu + "' ", bgl.baglanti());
            SqlDataReader drd = detay.ExecuteReader();

            if (drd.Read())
            {
                lbl_kisi.Text = drd[1].ToString();
                lbl_tarih.Text = Convert.ToDateTime(drd[0]).ToString("dd/MM/yyyy");

            }

            bgl.baglanti().Close();
        }
    
    }
}