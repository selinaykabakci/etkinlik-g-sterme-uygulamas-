using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ip_proje
{
    public partial class adminlist : System.Web.UI.Page
    {
        string connectionString = "Data Source=SELINAY;Initial Catalog=etkinlik;Integrated Security=True;";

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                SqlConnection connection = new SqlConnection(connectionString);
                string query = "SELECT Kullanici_Adi AS [KULLANICI ADI], Ad AS [ADI], Soyad AS [SOYADI], Mail, Tel as [TELEFON NUMARASI], Sifre AS [ŞİFRE] FROM tbl_Kullanici";
                SqlDataAdapter adapter = new SqlDataAdapter(query, connection);
                DataTable table = new DataTable();
                adapter.Fill(table);
                GridView1.DataSource = table;
                GridView1.DataBind();
            }
        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {
                string script = "if (!confirm('Ana sayfaya dönmek istediğinizden emin misiniz?')) return;";
                ClientScript.RegisterStartupScript(this.GetType(), "redirect", script, true);
                Response.Redirect("~/giris.aspx");
            
        }
    }
}