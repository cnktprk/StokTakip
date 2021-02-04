using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.HtmlControls;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace StokTakip
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        
        protected void kayitButton_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(@"Data Source = (localdb)\MSSQLLocalDB; initial catalog = StokVeriTabani; integrated security = true;");
            SqlCommand komut = new SqlCommand("INSERT INTO Kullanicilar (kullanici_adi, kullanici_email, kullanici_sifre) VALUES(@adi, @email, @sifre)", baglanti);
            komut.Parameters.AddWithValue("@adi", kullaniciAdi.Text);
            komut.Parameters.AddWithValue("@email", kullaniciEmail.Text);
            komut.Parameters.AddWithValue("@sifre", kullaniciSifre.Text);
            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("Login.aspx");
        }
    }
}