using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StokTakip
{
    public partial class Stokduzenle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UrunEkle_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(@"Data Source = (localdb)\MSSQLLocalDB; initial catalog = StokVeriTabani; integrated security = true;");
            SqlCommand komut = new SqlCommand("INSERT INTO StokListesi (urunMarka, urunAdi, urunFiyat, stokAdet) VALUES(@urunMarka, @urunAdi, @urunFiyat, @stokAdet)", baglanti);
            komut.Parameters.AddWithValue("@urunMarka", urunMarkaTbx.Text);
            komut.Parameters.AddWithValue("@urunAdi", urunAdTbx.Text);
            komut.Parameters.AddWithValue("@urunFiyat", urunFiyatTbx.Text);
            komut.Parameters.AddWithValue("@stokAdet", stokAdediTbx.Text);
            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("Stoklistesi.aspx");
        }
    }
}