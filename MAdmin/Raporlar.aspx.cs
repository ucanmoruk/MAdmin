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

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("select RaporNo, Tur, Marka,Model, Yol from Rapor", bgl.baglanti());
            SqlDataReader dr = comm.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            bgl.baglanti().Close();


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
                response.TransmitFile(Server.MapPath("~/Raporlar/GC.pdf"));
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


    }
}