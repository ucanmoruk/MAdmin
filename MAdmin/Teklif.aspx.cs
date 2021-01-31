﻿using System;
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

        int id;
        protected void update()
        {
            SqlCommand komut = new SqlCommand("update Teklif set Durum = @r1 where ID = '" + id + "' ", bgl.baglanti());
            komut.Parameters.AddWithValue("@r1", "Onaylandı");
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //if (e.CommandName != "indir") return;           
            //if (e.CommandName != "Onayla") return;
            

            if (e.CommandName == "Onayla")
            {
                id = Convert.ToInt32(e.CommandArgument);
                update();
                listele();
            }
            else if (e.CommandName == "indir")
            {
                string yol = e.CommandArgument.ToString();
                Response.Write("<script>alert('" + yol + "')</script>");
            }
            else
            {
                return;
            }



        }
    }
}