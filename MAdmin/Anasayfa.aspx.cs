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

        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Request.UrlReferrer != null)
            //{
            //    if (Request.UrlReferrer.ToString().IndexOf("giris.aspx") < 0)
            //    {
            //        Response.Redirect(Request.UrlReferrer.ToString());
            //    }
            //}
            //else
            //{
            //    Response.Redirect("giris.aspx");

            //}

            if (Session["Kullanici"] == null)
            {
                Response.Redirect("giris.aspx");
            }
            else
            {
                Lbl_ad.Text = Session["Kullanici"].ToString();
                if (Session["Tur"].ToString() == "Admin")
                {
                    divadmin.Visible = true;
                }
                else
                {
                    divadmin.Visible = false;
                }
            }
                

        }
    }
}