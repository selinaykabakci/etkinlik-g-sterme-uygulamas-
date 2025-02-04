using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ip_proje
{
    public partial class giris : System.Web.UI.Page
    {
        string connectionString = "Data Source=SELINAY;Initial Catalog=etkinlik;Integrated Security=True;";
        string query = "SELECT COUNT(1) FROM tbl_Kullanici WHERE Kullanici_Adi=@KullaniciAdi AND Sifre=@Sifre";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_singup_Click(object sender, EventArgs e)
        {
            Response.Redirect("kayıt.aspx");

        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {
            string kullaniciAdi = txt_username.Text;
            string sifre = txt_password.Text;
            if (string.IsNullOrEmpty(kullaniciAdi) || string.IsNullOrEmpty(sifre))
            {
                Label1.Text = "Kullanıcı Adı Ve Şifre Boş Bırakılamaz";
                kullaniciAdi = "";

            }
            else
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@KullaniciAdi", kullaniciAdi);
                        cmd.Parameters.AddWithValue("@Sifre", sifre);
                        con.Open();
                        int result = (int)cmd.ExecuteScalar();
                        con.Close();
                        if (result > 0)
                        {
                            // Kullanıcı girişi başarılı, oturum başlat ve ana sayfaya yönlendir
                            Session["KullaniciAdi"] = kullaniciAdi;
                            Response.Redirect("/AnaSayfa.aspx");
                        }
                        else
                        {
                            // Kullanıcı girişi başarısız, hata mesajı göster
                            Label1.Text = "Kullanıcı adı veya şifre yanlış!";
                            kullaniciAdi = "";
                        }
                    }
                }
            }
        }

        protected void btn_admin_Click(object sender, EventArgs e)
        {
            Response.Redirect("/admin.aspx");
        }
    }
}