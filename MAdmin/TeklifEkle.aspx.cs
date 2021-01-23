using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MAdmin
{
    public partial class TeklifEkle : System.Web.UI.Page
    {
        SqlBaglanti bgl = new SqlBaglanti();

        protected void listele()
        {
            SqlCommand comm = new SqlCommand("select * from Teklif order by Tarih desc", bgl.baglanti());
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
                Div1.Visible = false;
                
                SqlCommand komutID = new SqlCommand("Select * from Firma", bgl.baglanti());
                SqlDataReader drI = komutID.ExecuteReader();
                while (drI.Read())
                {
                    list_firma.Items.Add(drI["Firma_Adi"].ToString());
                }
                bgl.baglanti().Close();
                // Txt_tarih.Text = DateTime.Today.ToString("dd/MM/yyyy");

                listele();

            }
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
                response.AddHeader("Content-Disposition", "attachment; filename=" + yol + ".pdf" + ";");
                response.TransmitFile(Server.MapPath(yol));
                response.Flush();
                response.End();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Div1.Visible = false;
        }

        protected void Btn_Firma_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
              
                    if (FileUpload1.PostedFile.ContentType == "application/pdf")
                    {

                        if (FileUpload1.PostedFile.ContentLength < 30240000)
                        {
                        string fname = Txt_TeklifNo.Text +' '+ FileUpload1.FileName;
                        //string location = "Teklifler/";
                        //string path = System.IO.Path.Combine(location,fname);                                         
                        
                        //FileUpload1.SaveAs(MapPath(path));

                        FileUpload1.PostedFile.SaveAs(Server.MapPath("~\\Teklifler\\" + fname.Trim()));
                        string path = "~\\Uploadform\\" + fname.Trim();

                        SqlCommand komut = new SqlCommand("insert into Teklif (FirmaAd, TeklifNo, Tarih,TeklifiVeren,Yol,Durum) values (@a1,@a2,@a3,@a4,@a5,@a6)", bgl.baglanti());
                        komut.Parameters.AddWithValue("@a1", list_firma.Text);
                        komut.Parameters.AddWithValue("@a2", Txt_TeklifNo.Text);
                        komut.Parameters.AddWithValue("@a3", Convert.ToDateTime(Txt_tarih.Text));
                        komut.Parameters.AddWithValue("@a4", yetkili.Text);
                        komut.Parameters.AddWithValue("@a5", path);
                        komut.Parameters.AddWithValue("@a6", "Onay Bekliyor");
                        komut.ExecuteNonQuery();
                        Txt_TeklifNo.Text = "";
                        Txt_tarih.Text = "";

                        Div1.Visible = true;
                        listele();

                        }
                        else
                        {
                            Response.Write("<script>alert('Maksimum boyut 2MB olmalı.!')</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Sadece pdf dosyası yükleyebilirsiniz.!')</script>");
                    }                
               
            else
            {
                Response.Write("<script>alert('Lütfen teklif dosyanızı seçin.')</script>");
            }




            
        }
    }
}