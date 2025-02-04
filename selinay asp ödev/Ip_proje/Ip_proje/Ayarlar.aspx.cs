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
    public partial class Ayarlar : System.Web.UI.Page
    {
        string connectionString = "Data Source=SELINAY;Initial Catalog=etkinlik;Integrated Security=True;";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Ayarlar_Load();
            }

        }
        private bool IsValidEmail(string email)
        {
            try
            {
                var addr = new System.Net.Mail.MailAddress(email);
                return addr.Address == email;
            }
            catch
            {
                return false;
            }
        }
        private bool IsValidPhoneNumber(string phoneNumber)
        {
            // Telefon numarasının uzunluğunu kontrol et
            if (phoneNumber.Length != 11)
            {
                return false;
            }

            // Telefon numarasındaki her karakterin bir rakam olup olmadığını kontrol et
            foreach (char c in phoneNumber)
            {
                if (!char.IsDigit(c))
                {
                    return false;
                }
            }
            // Telefon numarasının doğru formatta olduğunu belirt
            return true;
        }
        private bool KullaniciAdiVarMi(string kullaniciAdi, string connectionString)
        {
            string query = "SELECT COUNT(*) FROM tbl_Kullanici WHERE Kullanici_Adi = @Kullanici_Adi";

            using (SqlConnection conn = new SqlConnection(connectionString))
            using (SqlCommand command = new SqlCommand(query, conn))
            {
                conn.Open();
                command.Parameters.AddWithValue("@Kullanici_Adi", kullaniciAdi);
                int count = (int)command.ExecuteScalar();
                return count > 0;
            }
        }
        private void Ayarlar_Load()
        {
            if (Session["KullaniciAdi"] != null)
            {
                string kullaniciAdi = Session["KullaniciAdi"].ToString();
                string query = "SELECT * FROM tbl_Kullanici WHERE Kullanici_Adi = @Kullanici";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Kullanici", kullaniciAdi);
                        connection.Open();
                        SqlDataReader reader = command.ExecuteReader();
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {

                                // Personel ID 102 değil ise verileri textboxlara doldur
                                txt_username.Text = reader["Kullanici_Adi"].ToString();
                                txt_name.Text = reader["Ad"].ToString();
                                txt_surname.Text = reader["Soyad"].ToString();
                                txt_phone.Text = reader["Tel"].ToString();
                                txt_mail.Text = reader["Mail"].ToString();

                            }
                        }
                        connection.Close();
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Kullanıcı bilgilerini al
            string KullaniciAdi = txt_username.Text;
            string ad = txt_name.Text;
            string soyad = txt_surname.Text;
            string mail = txt_mail.Text;
            string tel = txt_phone.Text;
            string skullaniciAdi = Session["KullaniciAdi"].ToString();

            // Şifre bilgilerini al
            string sifre = txt_pass.Text;
            string dogrulaSifre = txt_pass2.Text;

            // Kullanıcı bilgilerini güncelleme işlemi
            if (string.IsNullOrEmpty(ad) || string.IsNullOrEmpty(soyad) ||
                string.IsNullOrEmpty(tel) || string.IsNullOrEmpty(mail) || string.IsNullOrEmpty(KullaniciAdi))
            {
                Label6.Text = "Hiç Bir Alan Boş Bırakılmaz";
                return;
            }
            if (skullaniciAdi != KullaniciAdi && KullaniciAdiVarMi(KullaniciAdi, connectionString))
            {
                Label6.Text = "Bu kullanıcı adı zaten kullanımda.";
                return;
            }
            if (!IsValidEmail(mail))
            {
                Label6.Text = "Geçerli bir e-posta adresi giriniz.";
                return;
            }
            if (!IsValidPhoneNumber(tel))
            {
                Label6.Text = "Lütfen telefon numarasını boşluk bırakmadan 500 000 00 00 formatında girin.";
                return;
            }

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = @"UPDATE tbl_Kullanici SET Kullanici_Adi = @KAd, Ad= @Ad, Soyad = @Soyad,  
                         Tel = @Tel, Mail = @Mail
                         WHERE Kullanici_Adi = @SAd";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@KAd", KullaniciAdi);
                    command.Parameters.AddWithValue("@Ad", ad);
                    command.Parameters.AddWithValue("@Soyad", soyad);
                    command.Parameters.AddWithValue("@Tel", tel);
                    command.Parameters.AddWithValue("@Mail", mail);
                    command.Parameters.AddWithValue("@SAd", skullaniciAdi);

                    connection.Open();
                    int rowsAffected = command.ExecuteNonQuery();
                    connection.Close();

                    if (rowsAffected > 0)
                    {
                        Label6.Text = "Kayıt başarıyla güncellendi.";
                        Session["KullaniciAdi"] = txt_username.Text;
                    }
                    else
                    {
                        Label6.Text = "Kayıt güncellenirken bir hata oluştu.";
                        return;
                    }
                }
            }

            // Şifre güncelleme işlemi
            if (!string.IsNullOrEmpty(sifre) || !string.IsNullOrEmpty(dogrulaSifre))
            {
                if (string.IsNullOrEmpty(sifre) || string.IsNullOrEmpty(dogrulaSifre))
                {
                    Label6.Text = "Hiç bir alan boş bırakılamaz";
                    return;
                }
                if (sifre != dogrulaSifre)
                {
                    Label6.Text = "Şifreler eşleşmiyor";
                    return;
                }

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = @"UPDATE tbl_Kullanici SET Sifre=@Sifre WHERE Kullanici_Adi = @KAd";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@KAd", KullaniciAdi);
                        command.Parameters.AddWithValue("@Sifre", sifre);

                        connection.Open();
                        int rowsAffected = command.ExecuteNonQuery();
                        connection.Close();

                        if (rowsAffected > 0)
                        {
                            Label6.Text = "Kayıt başarıyla güncellendi.";
                        }
                        else
                        {
                            Label6.Text = "Şifre güncellenirken bir hata oluştu.";
                        }
                    }
                }
            }
        }
    }
}