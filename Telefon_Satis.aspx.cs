using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace web_Odev
{
    public partial class Telefon_Satis : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TelefonIDGetir();
                IDGetir();
            }

            TabloGetir();

        }



        void IDGetir()
        {
            Connection conn = new Connection();
            SqlDataAdapter da = new SqlDataAdapter("select *  from Telefon_Satis",
            @"server=DESKTOP-0RARGM4\SQLEXPRESS;Database=Telefon;Integrated Security=True");
            DataTable dt = new DataTable();
            da.Fill(dt);
            ddlID.DataSource = dt;
            ddlID.DataValueField = "SatisID";
            ddlID.DataTextField = "SAtisID";
            ddlID.DataBind();

        }
        void TelefonIDGetir()
        {
            Connection conn = new Connection();
            SqlDataAdapter da = new SqlDataAdapter("select *  from Telefon_Satis",
            @"server=DESKTOP-0RARGM4\SQLEXPRESS;Database=Telefon;Integrated Security=True");
            DataTable dt = new DataTable();
            da.Fill(dt);
            ddlTelefon.DataSource = dt;
            ddlTelefon.DataValueField = "SatisID";
            ddlTelefon.DataTextField = "TelefonID";
            ddlTelefon.DataBind();

        }



        public class Connection
        {
            public SqlConnection conn = new SqlConnection("server=DESKTOP-0RARGM4\\SQLEXPRESS;Database=Telefon;Integrated Security=True");
            public SqlDataAdapter adtr { get; set; }
            public SqlCommand komut { get; set; }

        }
        public void SatisEkle()
        {

            Connection conn = new Connection();
            DataTable tb = new DataTable();
            conn.conn.Open();
            conn.komut = new SqlCommand("TelefonSatis", conn.conn);
            conn.komut.CommandType = CommandType.StoredProcedure;
            conn.komut.Parameters.AddWithValue("@TelefonID", Convert.ToInt32(ddlTelefon.SelectedValue));
            conn.komut.Parameters.AddWithValue("@SatisFiyat", Convert.ToDouble(txtSatis.Text));
            conn.komut.ExecuteNonQuery();
            conn.conn.Close();
        }
        public void SatisGuncelle()
        {

            Connection conn = new Connection();
            DataTable tb = new DataTable();
            conn.conn.Open();
            conn.komut = new SqlCommand("TelefonSatisUpdate", conn.conn);
            conn.komut.CommandType = CommandType.StoredProcedure;
            conn.komut.Parameters.AddWithValue("@SatisID", Convert.ToInt32(ddlID.SelectedValue));
            conn.komut.Parameters.AddWithValue("@TelefonID", Convert.ToInt32(ddlTelefon.SelectedValue));
            conn.komut.Parameters.AddWithValue("@SatisFiyat", Convert.ToDouble(txtSatis.Text));
            conn.komut.ExecuteNonQuery();
            conn.conn.Close();
            TabloGetir();
        }
        void TabloGetir()
        {
            string cs = "server=DESKTOP-0RARGM4\\SQLEXPRESS;Database=Telefon;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("TelefonSatisSelect", con);
            con.Open();
            rptSatis.DataSource = cmd.ExecuteReader();
            rptSatis.DataBind();
            con.Close();

        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            SatisEkle();
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            SatisGuncelle();
        }
    }
}