using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Configuration;
using System.Data;

namespace MAdmin
{
    public partial class Raporlar : System.Web.UI.Page
    {
        SqlBaglanti bgl = new SqlBaglanti();
        
        protected void listele()
        {
            if (Session["Tur"].ToString() == "Admin")
            {

                SqlCommand comm = new SqlCommand("select * from Rapor", bgl.baglanti());
                SqlDataReader dr = comm.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                bgl.baglanti().Close();
            }
            else if (Session["Tur"].ToString() == "Proje")
            {


                SqlCommand comm = new SqlCommand("select * from Rapor where Proje=N'" + Lbl_ad.Text + "'", bgl.baglanti());
                SqlDataReader dr = comm.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                bgl.baglanti().Close();


            }
            else
            {

              //  txtarama.Attributes.Add("placeholder", "Numune Adı");

                SqlCommand comm = new SqlCommand("select * from Rapor where FirmaAd=N'" + Lbl_ad.Text + "'", bgl.baglanti());
                SqlDataReader dr = comm.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                bgl.baglanti().Close();

                GridView1.Columns[2].Visible = false;
            }
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
                       
            //textbox arama yapabilirsin
            // https://www.aspsnippets.com/Articles/Search-and-Filter-GridView-on-TextBox-OnTextChanged-event-in-ASPNet-using-C-and-VBNet.aspx


        }

        protected void GridView1_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName != "Open") return;
            string yol = e.CommandArgument.ToString();
            // do something   
            
            if (yol != "")
            {
               // string FileName = "Durgesh.jpg";

                System.Web.HttpResponse response = System.Web.HttpContext.Current.Response;
                response.ClearContent();
                response.Clear();
                response.ContentType = "application/pdf";
                response.AddHeader("Content-Disposition", "attachment; filename=" + yol +".pdf" + ";");
                string path = yol + ".pdf";
                response.TransmitFile(Server.MapPath("~\\Raporlar\\2021\\" + path));
                response.Flush();
                response.End();
                
            }
        }

     
        protected void Btn_Download_Click(object sender, EventArgs e)
        {
            //string FileName = "Durgesh.jpg";

            //LinkButton download = sender as LinkButton;
            //GridViewRow gridrow = download.NamingContainer as GridViewRow;
            //string path = GridView1.DataKeys[gridrow.RowIndex].Value.ToString();
            //Response.ContentType = "application/pdf";
            //Response.AddHeader("Content-Disposition", "attachment; filename=" + FileName + ";");
            //Response.TransmitFile(Server.MapPath(path));
            //Response.End();

        }

        protected void arama()
        {
            //if (Session["Tur"].ToString() == "Admin")
            //{
            //    SqlCommand comm = new SqlCommand("select * from Rapor where FirmaAd = '"+txtarama.Text+"'", bgl.baglanti());
            //    SqlDataReader dr = comm.ExecuteReader();
            //    GridView1.DataSource = dr;
            //    GridView1.DataBind();
            //    bgl.baglanti().Close();
            //}
            //else if (Session["Tur"].ToString() == "Proje")
            //{
            //    SqlCommand comm = new SqlCommand("select * from Rapor where FirmaAd = '" + txtarama.Text + "'", bgl.baglanti());
            //    SqlDataReader dr = comm.ExecuteReader();
            //    GridView1.DataSource = dr;
            //    GridView1.DataBind();
            //    bgl.baglanti().Close();
            //}
            //else
            //{
            //    SqlCommand comm = new SqlCommand("select * from Rapor where NumuneAd = '" + txtarama.Text + "'", bgl.baglanti());
            //    SqlDataReader dr = comm.ExecuteReader();
            //    GridView1.DataSource = dr;
            //    GridView1.DataBind();
            //    bgl.baglanti().Close();

            //}
        }

        //protected void txtarama_TextChanged(object sender, EventArgs e)
        //{
                  
        //    if (txtarama.Text != null)
        //    {
        //        arama();
        //    }
        //    else
        //    {
        //        listele();
        //    }

        //}
    }
}