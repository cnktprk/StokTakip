using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StokTakip
{
    public partial class Arayuz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(@"Data Source = (localdb)\MSSQLLocalDB; initial catalog = StokVeriTabani; integrated security = true;");
            SqlCommand komut = new SqlCommand("SELECT TOP 10 * FROM StokListesi ORDER BY stokAdet DESC;", baglanti);
            SqlDataReader reader;
            baglanti.Open();
            reader = komut.ExecuteReader();
            ArayuzRepeater.DataSource = reader;
            ArayuzRepeater.DataBind();
            reader.Close();
            SqlCommand azalanUrun = new SqlCommand("SELECT COUNT(*) FROM StokListesi WHERE stokAdet <= 50", baglanti);
            AzalanUrun.Text = azalanUrun.ExecuteScalar().ToString();

            SqlCommand tUrun = new SqlCommand("SELECT SUM(stokAdet) AS toplamStok FROM StokListesi", baglanti);
            ToplamUrun.Text = tUrun.ExecuteScalar().ToString();
            KalanUrun.Text = tUrun.ExecuteScalar().ToString();
            baglanti.Close();
        }
    }
}