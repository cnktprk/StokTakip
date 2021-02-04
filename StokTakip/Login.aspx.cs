using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StokTakip
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if(Request.Cookies["name"] != null && Request.Cookies["pass"] != null)
                {
                    kullaniciAdi.Text = Request.Cookies["name"].Value;
                    kullaniciSifre.Text = Request.Cookies["pass"].Value;
                }
            }
        }

        protected void girisButton_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(@"Data Source = (localdb)\MSSQLLocalDB; initial catalog = StokVeriTabani; integrated security = true;");
            baglanti.Open();
            SqlCommand cmd = new SqlCommand("SELECT * from Kullanicilar WHERE kullanici_adi= @kullaniciAdi AND kullanici_sifre= @kullaniciSifre ", baglanti);
            cmd.Parameters.AddWithValue("@kullaniciAdi", kullaniciAdi.Text);
            cmd.Parameters.AddWithValue("@kullaniciSifre", kullaniciSifre.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["kullaniciId"] = dr[0];
                if (remember.Checked)
                {
                    Response.Cookies["name"].Value = kullaniciAdi.Text;
                    Response.Cookies["pass"].Value = kullaniciSifre.Text;
                    Response.Cookies["name"].Expires = DateTime.Now.AddDays(15);
                    Response.Cookies["pass"].Expires = DateTime.Now.AddDays(15);
                }
                else
                {
                    Response.Cookies["name"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["pass"].Expires = DateTime.Now.AddDays(-1);
                }
                Response.Redirect("Arayuz.aspx");
            }
            baglanti.Close();
            Uyari.Text = "Kullanıcı adı veya şifre hatalı!";
        }
    }
}