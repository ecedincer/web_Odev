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
    public partial class Tablolar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TabloGetir();
        }

        void TabloGetir()
        {
            string cs = "server=DESKTOP-0RARGM4\\SQLEXPRESS;Database=Telefon;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("TumTablo", con);
            con.Open();
            rptTablo.DataSource = cmd.ExecuteReader();
            rptTablo.DataBind();
            con.Close();
        }
    }
}