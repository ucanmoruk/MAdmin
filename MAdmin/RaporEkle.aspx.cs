﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace MAdmin
{
    public partial class RaporEkle : System.Web.UI.Page
    {
        SqlBaglanti bgl = new SqlBaglanti();

        protected void listele()
        {
            SqlCommand comm = new SqlCommand("select * from Rapor order by Tarih desc", bgl.baglanti());
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

                SqlCommand komut = new SqlCommand("Select * from Firma where Tur=N'Proje' ", bgl.baglanti());
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    list_proje.Items.Add(dr["Firma_Adi"].ToString());
                }
                bgl.baglanti().Close();

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

        protected void GridView1_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            //if (e.CommandName != "Open") return;
            //string yol = e.CommandArgument.ToString();
            //// do something   

            //if (yol != "")
            //{
            //    // string FileName = "Durgesh.jpg";

            //    System.Web.HttpResponse response = System.Web.HttpContext.Current.Response;
            //    response.ClearContent();
            //    response.Clear();
            //    response.ContentType = "application/pdf";
            //    response.AddHeader("Content-Disposition", "attachment; filename=" + yol + ".pdf" + ";");
            //    response.TransmitFile(Server.MapPath(yol));
            //    response.Flush();
            //    response.End();
            //}

            if (e.CommandName == "Open")
            {
                string yol = e.CommandArgument.ToString();
                
                //string yol = "20102030-0ulmt8.pdf";
                 string path = Server.MapPath("~\\Raporlar\\2021\\" + yol.Trim());
               // string path = Server.MapPath(".") + yol;

              //  string yeniyol = "file:///C:/Users/X260/source/repos/GitHub/MAdmin/MAdmin/Raporlar/2021/20102030-0ulmt8.pdf";
                WebClient User = new WebClient();

                //Byte[] FileBuffer = User.DownloadData(yeniyol);
                //if (FileBuffer != null)
                //{
                //    Response.ContentType = "application/pdf";
                //    Response.AddHeader("content-length", FileBuffer.Length.ToString());
                //    Response.AddHeader("Content-Disposition", "attachment; filename=dosya_AdiniBurayaYazdir.pdf");
                //    Response.AddHeader("Content-disposition", "inline");
                //    Response.BinaryWrite(FileBuffer);
                //}

                Byte[] ByteArray = User.DownloadData(path);

                Response.Clear();
                Response.Buffer = true;
                Response.AddHeader("Content-Length", ByteArray.Length.ToString());
                Response.AddHeader("Content-Disposition", "inline; filename =" + yol);
                Response.AddHeader("Expires", "0");
                Response.AddHeader("Pragma", "cache");
                Response.AddHeader("Cache - Control", "private");
                Response.ContentType = "application/pdf";
                Response.BinaryWrite(ByteArray);
                Response.Flush();
                try { Response.End(); }
                catch { }



            }
            else if (e.CommandName == "RaporSil")
            {
                string Raporid = e.CommandArgument.ToString();

                SqlCommand add = new SqlCommand("delete from Rapor where ID = @p1 ", bgl.baglanti());
                add.Parameters.AddWithValue("@p1", Raporid);
                add.ExecuteNonQuery();
                bgl.baglanti().Close();
                listele();

            }
            else
            {

            }
            return;

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
                        parolaolustur();
                        //string fname = Txt_RaporNo.Text + ' ' + FileUpload1.FileName;
                        string fname = Txt_RaporNo.Text + "-"+parola+ ".pdf";
                        //string location = "Teklifler/";
                        //string path = System.IO.Path.Combine(location,fname);                                         

                        //FileUpload1.SaveAs(MapPath(path));

                        FileUpload1.PostedFile.SaveAs(Server.MapPath("~\\Raporlar\\2021\\" + fname.Trim()));
                        //string path = "~\\Raporlar\\2021\\" + fname.Trim();
                        string path = fname.Trim();

                        SqlCommand komut = new SqlCommand("insert into Rapor (FirmaAd, Proje, RaporNo, Tarih,NumuneTur,NumuneAd,Yol) values (@a1,@a7, @a2,@a3,@a4,@a5,@a6)", bgl.baglanti());
                        komut.Parameters.AddWithValue("@a1", list_firma.Text);
                        komut.Parameters.AddWithValue("@a7", list_proje.Text);
                        komut.Parameters.AddWithValue("@a2", Txt_RaporNo.Text);
                        komut.Parameters.AddWithValue("@a3", Convert.ToDateTime(Txt_tarih.Text));
                        komut.Parameters.AddWithValue("@a4", txt_tur.Text);
                        komut.Parameters.AddWithValue("@a5", txt_ad.Text);
                        komut.Parameters.AddWithValue("@a6", path);
                        komut.ExecuteNonQuery();
                        //Txt_RaporNo.Text = "";
                        //txt_tur.Text = "";
                        //txt_ad.Text = "";

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
                Response.Write("<script>alert('Lütfen test rapor dosyanızı seçin.')</script>");
            }





        }

    }
}