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
    public partial class Telefon_Marka_Model : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                IDGetir();
            }

            TabloGetir();

        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            KayıtEkle();
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {

        }


        public void KayıtEkle()
        {

            Connection conn = new Connection();
            DataTable tb = new DataTable();
            conn.conn.Open();
            conn.komut = new SqlCommand("TelefonMarkaModel", conn.conn);
            conn.komut.CommandType = CommandType.StoredProcedure;
            conn.komut.Parameters.AddWithValue("@TelefonMarkaAdi", txtMarka.Text);
            conn.komut.Parameters.AddWithValue("@TelefonModelAdi", txtModel.Text);
            conn.komut.ExecuteNonQuery();
            conn.conn.Close();
        }

        public void Guncelle()
        {

            Connection conn = new Connection();
            DataTable tb = new DataTable();
            conn.conn.Open();
            conn.komut = new SqlCommand("TelefonMarkaModelUpdate", conn.conn);
            conn.komut.CommandType = CommandType.StoredProcedure;
            conn.komut.Parameters.AddWithValue("@TelefonMarkaID", Convert.ToInt32(ddlID.SelectedValue));
            conn.komut.Parameters.AddWithValue("@TelefonMarkaAdi", txtMarka.Text);
            conn.komut.Parameters.AddWithValue("@TelefonModelAdi", txtModel.Text);
            conn.komut.ExecuteNonQuery();
            conn.conn.Close();
            TabloGetir();
        }
        void TabloGetir()
        {
            string cs = "server=DESKTOP-0RARGM4\\SQLEXPRESS;Database=Telefon;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("TelefonMarkaModelSelect", con);
            con.Open();
            rptMarka.DataSource = cmd.ExecuteReader();
            rptMarka.DataBind();
            con.Close();
        }

        void IDGetir()
        {
            Connection conn = new Connection();
            SqlDataAdapter da = new SqlDataAdapter("select *  from Telefon_Marka_Model",
            @"server=DESKTOP-0RARGM4\SQLEXPRESS;Database=Telefon;Integrated Security=True");
            DataTable dt = new DataTable();
            da.Fill(dt);
            ddlID.DataSource = dt;
            ddlID.DataValueField = "TelefonMarkaID";
            ddlID.DataTextField = "TelefonMarkaID";
            ddlID.DataBind();

        }
        public class Connection
        {
            public SqlConnection conn = new SqlConnection("server=DESKTOP-0RARGM4\\SQLEXPRESS;Database=Telefon;Integrated Security=True");
            public SqlDataAdapter adtr { get; set; }
            public SqlCommand komut { get; set; }

        }
    }
}