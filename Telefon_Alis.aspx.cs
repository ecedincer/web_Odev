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
    public partial class Telefon_Alis : System.Web.UI.Page
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
        protected void btnEkle_Click(object sender, EventArgs e)
        {
            AlisEkle();
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            AlisGuncelle();
        }



        void IDGetir()
        {
            Connection conn = new Connection();
            SqlDataAdapter da = new SqlDataAdapter("select *  from Telefon_Alis",
            @"server=DESKTOP-0RARGM4\SQLEXPRESS;Database=Telefon;Integrated Security=True");
            DataTable dt = new DataTable();
            da.Fill(dt);
            ddlID.DataSource = dt;
            ddlID.DataValueField = "AlisID";
            ddlID.DataTextField = "AlisID";
            ddlID.DataBind();

        }
        void TelefonIDGetir()
        {
            Connection conn = new Connection();
            SqlDataAdapter da = new SqlDataAdapter("select *  from Telefon_Alis",
            @"server=DESKTOP-0RARGM4\SQLEXPRESS;Database=Telefon;Integrated Security=True");
            DataTable dt = new DataTable();
            da.Fill(dt);
            ddlTelefon.DataSource = dt;
            ddlTelefon.DataValueField = "AlisID";
            ddlTelefon.DataTextField = "TelefonID";
            ddlTelefon.DataBind();

        }



        public class Connection
        {
            public SqlConnection conn = new SqlConnection("server=DESKTOP-0RARGM4\\SQLEXPRESS;Database=Telefon;Integrated Security=True");
            public SqlDataAdapter adtr { get; set; }
            public SqlCommand komut { get; set; }

        }

        
        public void AlisEkle()
        {

            Connection conn = new Connection();
            DataTable tb = new DataTable();
            conn.conn.Open();
            conn.komut = new SqlCommand("TelefonAlis", conn.conn);
            conn.komut.CommandType = CommandType.StoredProcedure;
            conn.komut.Parameters.AddWithValue("@TelefonID", Convert.ToInt32(ddlTelefon.SelectedValue));
            conn.komut.Parameters.AddWithValue("@AlisFiyat", Convert.ToDouble(txtAlis.Text));           
            conn.komut.ExecuteNonQuery();
            conn.conn.Close();
        }
        public void AlisGuncelle()
        {

            Connection conn = new Connection();
            DataTable tb = new DataTable();
            conn.conn.Open();
            conn.komut = new SqlCommand("TelefonAlisUpdate", conn.conn);
            conn.komut.CommandType = CommandType.StoredProcedure;
            conn.komut.Parameters.AddWithValue("@AlisID", Convert.ToInt32(ddlID.SelectedValue));
            conn.komut.Parameters.AddWithValue("@TelefonID", Convert.ToInt32(ddlTelefon.SelectedValue));
            conn.komut.Parameters.AddWithValue("@AlisFiyat", Convert.ToDouble(txtAlis.Text));            
            conn.komut.ExecuteNonQuery();
            conn.conn.Close();
            TabloGetir();
        }
        void TabloGetir()
        {
            string cs = "server=DESKTOP-0RARGM4\\SQLEXPRESS;Database=Telefon;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("TelefonAlisSelect", con);
            con.Open();
            rptAlis.DataSource = cmd.ExecuteReader();
            rptAlis.DataBind();
            con.Close();
        }
    }
}