using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StokTakip
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(@"Data Source = (localdb)\MSSQLLocalDB; initial catalog = StokVeriTabani; integrated security = true;");
            SqlCommand komut = new SqlCommand("SELECT * FROM Kullanicilar WHERE id = \'" + Session["kullaniciId"].ToString() + "\'", baglanti);
            baglanti.Open();
            SqlDataReader reader = komut.ExecuteReader();
            reader.Read();
            Adi.Text = reader["kullanici_adi"].ToString();
            Rol.Text = reader["kullanici_rol"].ToString();
            Yetki.Text = reader["kullanici_yetki"].ToString();
            baglanti.Close();
        }

        protected void Guncelle_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(@"Data Source = (localdb)\MSSQLLocalDB; initial catalog = StokVeriTabani; integrated security = true;");
            SqlCommand komut = new SqlCommand("UPDATE Kullanicilar SET kullanici_sifre=@sifre WHERE id = @id", baglanti);
            komut.Parameters.AddWithValue("@sifre", yeniSifreTbx.Text);
            komut.Parameters.AddWithValue("@id", Session["kullaniciId"]);
            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("Arayuz.aspx");
        }
    }
}