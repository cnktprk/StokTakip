using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StokTakip
{
    public partial class Stoklistesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(@"Data Source = (localdb)\MSSQLLocalDB; initial catalog = StokVeriTabani; integrated security = true;");
            SqlCommand komut = new SqlCommand("SELECT * FROM StokListesi", baglanti);
            SqlDataReader reader;
            baglanti.Open();
            reader = komut.ExecuteReader();
            Repeater1.DataSource = reader;
            Repeater1.DataBind();
            reader.Close();
            baglanti.Close();
        }

        protected void UrunSil_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(@"Data Source = (localdb)\MSSQLLocalDB; initial catalog = StokVeriTabani; integrated security = true;");
            SqlCommand komut = new SqlCommand("DELETE FROM StokListesi WHERE barkodNo = @barkodNo", baglanti);
            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("Stoklistesi.aspx");
        }

        protected void UrunGuncelle_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(@"Data Source = (localdb)\MSSQLLocalDB; initial catalog = StokVeriTabani; integrated security = true;");
            SqlCommand komut = new SqlCommand("DELETE FROM StokListesi WHERE barkodNo = @barkodNo", baglanti);
            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("Stoklistesi.aspx");
        }
    }
}