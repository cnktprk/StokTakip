using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StokTakip
{
    public partial class Stoksil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UrunSil_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(@"Data Source = (localdb)\MSSQLLocalDB; initial catalog = StokVeriTabani; integrated security = true;");
            SqlCommand komut = new SqlCommand("DELETE FROM StokListesi WHERE barkodNo = @barkodNo", baglanti);
            komut.Parameters.AddWithValue("@barkodNo", gunUrunBarkod.Text);
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