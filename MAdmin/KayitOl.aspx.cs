using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MAdmin
{
    public partial class KayitOl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (txt_firmaadi.Text == string.Empty || txt_adres.Text == string.Empty || txt_mail.Text == string.Empty || txt_vergino.Text == string.Empty || txt_parola.Text == string.Empty)
            //{
            //    Response.Write("<script>alert('Lütfen zorunlu alanları doldurunuz!')</script>");
            //}
            //else
            //{

            //    if (txt_parola.Text == txt_parola2.Text)
            //    {
            //        EntityFirm ent = new EntityFirm();
            //        ent.Firma_Adi1 = txt_firmaadi.Text;
            //        ent.Adres1 = txt_adres.Text;
            //        ent.Vergi_Dairesi1 = txt_vergidairesi.Text;
            //        ent.Vergi_No1 = txt_vergino.Text;
            //        ent.Mail1 = txt_mail.Text;
            //        ent.Telefon1 = txt_telefon.Text;
            //        ent.Parola1 = txt_parola.Text;
            //        BLLFirmaEkle.FirmaEkleBLL(ent);
            //        temizle();
            //        Response.Write("<script>alert('Kayıt işleminiz başarı ile gerçekleşti!')</script>");
            //    }
            //    else
            //    {
            //        Response.Write("<script>alert('Girmiş olduğunuz parolanın birbiri ile uyumlu olması gerekiyor!')</script>");
            //    }
            //}
        }


        void temizle()
        {
            txt_adres.Text = "";
            txt_firmaadi.Text = "";
            txt_mail.Text = "";
            txt_parola.Text = "";
            txt_parola2.Text = "";
            txt_telefon.Text = "";
            txt_vergidairesi.Text = "";
            txt_vergino.Text = "";

        }


    }  

}