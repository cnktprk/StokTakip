using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StokTakip
{
    public partial class Stokguncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UrunGuncelle_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(@"Data Source = (localdb)\MSSQLLocalDB; initial catalog = StokVeriTabani; integrated security = true;");
            SqlCommand komut = new SqlCommand("UPDATE StokListesi SET urunMarka = @urunMarka, urunAdi =  @urunAdi, urunFiyat = @urunFiyat, stokAdet = @stokAdet WHERE barkodNo = @barkodNo", baglanti);
            komut.Parameters.AddWithValue("@barkodNo", gunUrunBarkod.Text);
            komut.Parameters.AddWithValue("@urunMarka", gunUrunMarka.Text);
            komut.Parameters.AddWithValue("@urunAdi", gunUrunAd.Text);
            komut.Parameters.AddWithValue("@urunFiyat", gunUrunFiyat.Text);
            komut.Parameters.AddWithValue("@stokAdet", gunStokAdet.Text);
            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("Stoklistesi.aspx");
        }

        protected void UrunBul_Click(object sender, EventArgs e)
        {
            string urunAd = BulUrunAd.Text;
            SqlConnection baglanti = new SqlConnection(@"Data Source = (localdb)\MSSQLLocalDB; initial catalog = StokVeriTabani; integrated security = true;");
            SqlCommand komut = new SqlCommand("SELECT * FROM StokListesi WHERE urunAdi LIKE \'%" + urunAd + "%\'", baglanti);
            baglanti.Open();
            SqlDataReader reader = komut.ExecuteReader();
            BulGrid.DataSource = reader;
            BulGrid.DataBind();
            baglanti.Close();
        }
    }
}