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
    public partial class NumuneGonder : System.Web.UI.Page
    {
        SqlBaglanti bgl = new SqlBaglanti();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici"] == null)
            {
                Response.Redirect("giris.aspx");

            }
            else
            {     
                if (!Page.IsPostBack)
                {
                    SetInitialRow();

                    Lbl_ad.Text = Session["Kullanici"].ToString();
                    theDiv.Visible = false;
                    SqlCommand komutID = new SqlCommand("Select * from Firma where Firma_Adi = N'" + Lbl_ad.Text + "'", bgl.baglanti());
                    SqlDataReader drI = komutID.ExecuteReader();
                    while (drI.Read())
                    {

                        txt_rfirma.Text = drI["Firma_Adi"].ToString();
                        txt_radres.Text = drI["Adres"].ToString();
                        txt_riletisim.Text = drI["Mail"].ToString();
                        txt_ffirma.Text = drI["Firma_Adi"].ToString();
                        txt_fadres.Text = drI["Adres"].ToString();
                        txt_fmail.Text = drI["Mail"].ToString();
                        txt_vd.Text = drI["Vergi_Dairesi"].ToString();
                        txt_vn.Text = drI["Vergi_No"].ToString();
                    }
                    bgl.baglanti().Close();
                   
                }
                //string name = "Name";
                //DataTable dt = new DataTable();
                //DataColumn dc = new DataColumn(name, typeof(System.String));
                //dt.Columns.Add(dc);
                //DataRow dr = dt.NewRow();
                //dr[name] = "No Record";
                //dt.Rows.Add(dr);
                //GridView1.DataSource = dt;
                //GridView1.DataBind();

            }

        }

        protected void Btn_SatirEkle_Click(object sender, EventArgs e)
        {
            AddNewRowToGrid();
        }

        private void SetInitialRow()
        {
            DataTable dt = new DataTable();
            DataRow dr = null;
            dt.Columns.Add(new DataColumn("RowNumber", typeof(string)));
            dt.Columns.Add(new DataColumn("Column1", typeof(string)));
            dt.Columns.Add(new DataColumn("Column2", typeof(string)));
            dt.Columns.Add(new DataColumn("Column3", typeof(string)));
            dt.Columns.Add(new DataColumn("Column4", typeof(string)));
            dr = dt.NewRow();
            dr["RowNumber"] = 1;
            dr["Column1"] = string.Empty;
            dr["Column2"] = string.Empty;
            dr["Column3"] = string.Empty;
            dr["Column4"] = string.Empty;
            dt.Rows.Add(dr);
            //dr = dt.NewRow();

            //Store the DataTable in ViewState
            ViewState["CurrentTable"] = dt;
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        private void AddNewRowToGrid()
        {
            int rowIndex = 0;

            if (ViewState["CurrentTable"] != null)
            {
                DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable"];
                DataRow drCurrentRow = null;
                if (dtCurrentTable.Rows.Count > 0)
                {
                    for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
                    {
                        //extract the TextBox values
                        TextBox box1 = (TextBox)GridView1.Rows[rowIndex].Cells[1].FindControl("TextBox1");
                        TextBox box2 = (TextBox)GridView1.Rows[rowIndex].Cells[2].FindControl("TextBox2");
                        TextBox box3 = (TextBox)GridView1.Rows[rowIndex].Cells[3].FindControl("TextBox3");
                        TextBox box4 = (TextBox)GridView1.Rows[rowIndex].Cells[3].FindControl("TextBox3");

                        drCurrentRow = dtCurrentTable.NewRow();
                        drCurrentRow["RowNumber"] = i + 1;
                        dtCurrentTable.Rows[i - 1]["Column1"] = box1.Text;
                        dtCurrentTable.Rows[i - 1]["Column2"] = box2.Text;
                        dtCurrentTable.Rows[i - 1]["Column3"] = box3.Text;
                        dtCurrentTable.Rows[i - 1]["Column4"] = box3.Text;
                        rowIndex++;
                    }
                    dtCurrentTable.Rows.Add(drCurrentRow);
                    ViewState["CurrentTable"] = dtCurrentTable;

                    GridView1.DataSource = dtCurrentTable;
                    GridView1.DataBind();
                }
            }
            else
            {
                Response.Write("ViewState is null");
            }
            //Set Previous Data on Postbacks
            SetPreviousData();
        }

        private void SetPreviousData()
        {
            int rowIndex = 0;

            if (ViewState["CurrentTable"] != null)
            {
                DataTable dt = (DataTable)ViewState["CurrentTable"];
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        TextBox box1 = (TextBox)GridView1.Rows[rowIndex].Cells[1].FindControl("TextBox1");
                        TextBox box2 = (TextBox)GridView1.Rows[rowIndex].Cells[2].FindControl("TextBox2");
                        TextBox box3 = (TextBox)GridView1.Rows[rowIndex].Cells[3].FindControl("TextBox3");
                        TextBox box4 = (TextBox)GridView1.Rows[rowIndex].Cells[3].FindControl("TextBox4");

                        box1.Text = dt.Rows[i]["Column1"].ToString();
                        box2.Text = dt.Rows[i]["Column2"].ToString();
                        box3.Text = dt.Rows[i]["Column3"].ToString();
                        box4.Text = dt.Rows[i]["Column4"].ToString();
                        rowIndex++;
                    }
                }
            }
        }

        int talepn, talepno;
        protected void talepbul()
        {
            SqlCommand komutID = new SqlCommand("select MAX(TalepNo) from Talep", bgl.baglanti());
            SqlDataReader drI = komutID.ExecuteReader();
            while (drI.Read())
            {
                talepn = Convert.ToInt32(drI[0].ToString());
                talepno = talepn + 1;
            }
            bgl.baglanti().Close();
        }

        string foto, kod;
        protected void Btn_Ekle_Click(object sender, EventArgs e)
        {
           

            if (CheckBox1.Checked)
            {
                kod = Session["Kod"].ToString();
                string karar = DropDownList1.SelectedValue.ToString();
                string dil = DropDownList2.SelectedValue.ToString();
                string iade = DropDownList3.SelectedValue.ToString();
                talepbul();
                SqlCommand komutz = new SqlCommand("insert into Talep (Tarih,FirmaKodu,Sozlesme,Durum,TalepNo) values (@a1,@a2,@a3,@a4,@a5)" +
                    " SET @ID=SCOPE_IDENTITY();", bgl.baglanti());
                komutz.Parameters.AddWithValue("@a1", DateTime.Now);
                komutz.Parameters.AddWithValue("@a2", kod);
                komutz.Parameters.AddWithValue("@a3", 1);
                komutz.Parameters.AddWithValue("@a4", "Numune Bekleniyor");
                komutz.Parameters.AddWithValue("@a5", talepno);
                komutz.Parameters.Add("@ID", SqlDbType.Int).Direction = ParameterDirection.Output;

                //int TalepID = Convert.ToInt32(komutz.ExecuteScalar());
                komutz.ExecuteNonQuery();
                string TalepID = komutz.Parameters["@ID"].Value.ToString();
                bgl.baglanti().Close();

                SqlCommand komut1 = new SqlCommand("insert into TalepRaporlama (TalepID, Firma, Adres, Yetkili, Iletisim,Karar,Dil,Iade,UreticiFirma,[Not]) values (@a1,@a2,@a3,@a4,@a5,@a6,@a7,@a8,@a9,@a10) ; " +
                    "insert into TalepFatura (TalepID, Firma, Adres, VergiDairesi, VergiNo, Mail) values (@o1,@o2,@o3,@o4,@o5,@o6) ;", bgl.baglanti());
                komut1.Parameters.AddWithValue("@a1", TalepID);
                komut1.Parameters.AddWithValue("@a2", txt_rfirma.Text);
                komut1.Parameters.AddWithValue("@a3", txt_radres.Text);
                komut1.Parameters.AddWithValue("@a4", txt_ryetkili.Text);
                komut1.Parameters.AddWithValue("@a5", txt_riletisim.Text);
                komut1.Parameters.AddWithValue("@a6", karar);
                komut1.Parameters.AddWithValue("@a7", dil);
                komut1.Parameters.AddWithValue("@a8", iade);
                komut1.Parameters.AddWithValue("@a9", txt_uretici.Text);
                komut1.Parameters.AddWithValue("@a10", txt_not.Text);
                komut1.Parameters.AddWithValue("@o1", TalepID);
                komut1.Parameters.AddWithValue("@o2", txt_ffirma.Text);
                komut1.Parameters.AddWithValue("@o3", txt_fadres.Text);
                komut1.Parameters.AddWithValue("@o4", txt_vd.Text);
                komut1.Parameters.AddWithValue("@o5", txt_vn.Text);
                komut1.Parameters.AddWithValue("@o6", txt_fmail.Text);
                komut1.ExecuteNonQuery();
                bgl.baglanti().Close();


                for (int ik = 0; ik < GridView1.Rows.Count; ik++)
                {
                    TextBox Numune = (TextBox)GridView1.Rows[ik].FindControl("TextBox1");
                    string num = Numune.Text;
                    TextBox Ozellik = (TextBox)GridView1.Rows[ik].FindControl("TextBox2");
                    string oze = Ozellik.Text;
                    TextBox Analiz = (TextBox)GridView1.Rows[ik].FindControl("TextBox3");
                    string ana = Analiz.Text;
                    TextBox Metot = (TextBox)GridView1.Rows[ik].FindControl("TextBox4");
                    string met = Metot.Text;

                    SqlCommand komut = new SqlCommand("insert into TalepNumune (Numune,Ozellik,Analiz,Metot,TalepID) values (@a1,@a2,@a3,@a4,@a5)", bgl.baglanti());
                    komut.Parameters.AddWithValue("@a1", num);
                    komut.Parameters.AddWithValue("@a2", oze);
                    komut.Parameters.AddWithValue("@a3", ana);
                    komut.Parameters.AddWithValue("@a4", met);
                    komut.Parameters.AddWithValue("@a5", TalepID);
                    komut.ExecuteNonQuery();
                    bgl.baglanti().Close();
                }

                Response.Redirect("anasayfa.aspx");

            }
            else
            {
                theDiv.Visible = true;
            }


          

        }

        protected void Btn_kapat_Click(object sender, EventArgs e)
        {
            theDiv.Visible = false;
        }
    }
}