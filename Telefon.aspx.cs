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
    public partial class Telefon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MarkaGetir();
                IDGetir();
            }
            TabloGetir();


            
        }
        void TabloGetir()
        {
            string cs = "server=DESKTOP-0RARGM4\\SQLEXPRESS;Database=Telefon;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("TelefonnGirisSelect", con);
            con.Open();
            rptTelefon.DataSource = cmd.ExecuteReader();
            rptTelefon.DataBind();
            con.Close();
        }

        void MarkaGetir()
        {
            Connection conn = new Connection();
            SqlDataAdapter da = new SqlDataAdapter("select *  from Telefon_Marka_Model",
            @"server=DESKTOP-0RARGM4\SQLEXPRESS;Database=Telefon;Integrated Security=True");
            DataTable dt = new DataTable();
            da.Fill(dt);
            ddlMarka.DataSource = dt;
            ddlMarka.DataValueField = "TelefonMarkaID";
            ddlMarka.DataTextField = "TelefonMarkaAdi";
            ddlMarka.DataBind();

        }

        void IDGetir()
        {
            Connection conn = new Connection();
            SqlDataAdapter da = new SqlDataAdapter("select *  from Telefonn",
            @"server=DESKTOP-0RARGM4\SQLEXPRESS;Database=Telefon;Integrated Security=True");
            DataTable dt = new DataTable();
            da.Fill(dt);
            ddlID.DataSource = dt;
            ddlID.DataValueField = "ID";
            ddlID.DataTextField = "ID";
            ddlID.DataBind();

        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            TelefonEkle();
            txtRenk.Text = "";
            txtSatis.Text = "";
            txtHafiza.Text = "";
            txtAlis.Text = "";
            
        }

        public void TelefonEkle()
        {

            Connection conn = new Connection();
            DataTable tb = new DataTable();
            conn.conn.Open();
            conn.komut = new SqlCommand("TelefonnGiris", conn.conn);
            conn.komut.CommandType = CommandType.StoredProcedure;
            conn.komut.Parameters.AddWithValue("@TelefonMarkaID",Convert.ToInt32( ddlMarka.SelectedValue));
            conn.komut.Parameters.AddWithValue("@AlisID", Convert.ToInt32(txtAlis.Text));
            conn.komut.Parameters.AddWithValue("@SatisID", Convert.ToInt32(txtSatis.Text));
            conn.komut.Parameters.AddWithValue("@Hafıza", Convert.ToInt32(txtHafiza.Text));
            conn.komut.Parameters.AddWithValue("@Renk", txtRenk.Text);
            conn.komut.ExecuteNonQuery();
            conn.conn.Close();
        }
        public void TelefonGuncelle()
        {

            Connection conn = new Connection();
            DataTable tb = new DataTable();
            conn.conn.Open();
            conn.komut = new SqlCommand("TelefonnGirisUpdate", conn.conn);
            conn.komut.CommandType = CommandType.StoredProcedure;
            conn.komut.Parameters.AddWithValue("@ID", Convert.ToInt32(ddlID.SelectedValue));
            conn.komut.Parameters.AddWithValue("@TelefonMarkaID", Convert.ToInt32(ddlMarka.SelectedValue));
            conn.komut.Parameters.AddWithValue("@AlisID", Convert.ToInt32(txtAlis.Text));
            conn.komut.Parameters.AddWithValue("@SatisID", Convert.ToInt32(txtSatis.Text));
            conn.komut.Parameters.AddWithValue("@Hafıza", Convert.ToInt32(txtHafiza.Text));
            conn.komut.Parameters.AddWithValue("@Renk", txtRenk.Text);
            conn.komut.ExecuteNonQuery();
            conn.conn.Close();
            TabloGetir();
        }

        public class Connection
        {
            public SqlConnection conn = new SqlConnection("server=DESKTOP-0RARGM4\\SQLEXPRESS;Database=Telefon;Integrated Security=True");
            public SqlDataAdapter adtr { get; set; }
            public SqlCommand komut { get; set; }

        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            TelefonGuncelle();
        }

    }
}