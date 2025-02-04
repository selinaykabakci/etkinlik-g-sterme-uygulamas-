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
    public partial class kayıt : System.Web.UI.Page
    {
        string connectionString = "Data Source=SELINAY;Initial Catalog=etkinlik;Integrated Security=True;";
        protected void Page_Load(object sender, EventArgs e)
        {

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
        protected void btn_Login_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txt_username.Text) || string.IsNullOrEmpty(txt_ad.Text) || string.IsNullOrEmpty(txt_soyad.Text) ||
                string.IsNullOrEmpty(txt_mail.Text) || string.IsNullOrEmpty(txt_tel.Text) || string.IsNullOrEmpty(txt_password.Text) ||
                string.IsNullOrEmpty(txt_pascont.Text))
            {
                Label1.Text = "Hiç bir alan boş bırakılamaz";
                txt_ad.Text = "";
                txt_mail.Text = "";
                txt_soyad.Text = "";
                txt_tel.Text = "";
                txt_username.Text = "";
            }
            else
            {
                string sifre = txt_password.Text;
                string dogrulaSifre = txt_pascont.Text;
                if (!IsValidEmail(txt_mail.Text))
                {
                    // Hata mesajını göster
                    Label1.Text = "Geçerli bir e-posta adresi giriniz.";
                    txt_ad.Text = "";
                    txt_mail.Text = "";
                    txt_soyad.Text = "";
                    txt_tel.Text = "";
                    txt_username.Text = "";
                }
                else if (sifre != dogrulaSifre)
                {
                    Label1.Text = "Şifreler eşleşmiyor";
                    txt_ad.Text = "";
                    txt_mail.Text = "";
                    txt_soyad.Text = "";
                    txt_tel.Text = "";
                    txt_username.Text = "";
                    return;
                }
                else if (!IsValidPhoneNumber(txt_tel.Text))
                {
                    // Eğer telefon numarası doğru formatta değilse hata mesajı göster
                    Label1.Text = "Lütfen telefon numarasını boşluk bırakmadan 0500-000-00-00 formatında girin.";
                    txt_ad.Text = "";
                    txt_mail.Text = "";
                    txt_soyad.Text = "";
                    txt_tel.Text = "";
                    txt_username.Text = "";
                }
                else if(KullaniciAdiVarMi(txt_username.Text, connectionString))
                {
                        Label1.Text = "Bu kullanıcı adı zaten kullanımda.";
                    txt_ad.Text = "";
                    txt_mail.Text = "";
                    txt_soyad.Text = "";
                    txt_tel.Text = "";
                    txt_username.Text = "";
                    return;
                }
                else
                {
                    // SQL sorgusu
                    string query = "INSERT INTO tbl_Kullanici (Kullanici_Adi, Sifre, Ad, Soyad, Mail, Tel) VALUES (@Kullanici_Adi, @Sifre, @Ad, @Soyad, @Mail, @Tel)";

                    try
                    {
                        using (SqlConnection conn = new SqlConnection(connectionString))
                        using (SqlCommand command = new SqlCommand(query, conn))
                        {
                            // Parametreleri ekle
                            command.Parameters.AddWithValue("@Ad", txt_ad.Text);
                            command.Parameters.AddWithValue("@Soyad", txt_soyad.Text);
                            command.Parameters.AddWithValue("@Kullanici_Adi", txt_username.Text);
                            command.Parameters.AddWithValue("@Tel", txt_tel.Text);
                            command.Parameters.AddWithValue("@Mail", txt_mail.Text);
                            command.Parameters.AddWithValue("@Sifre", sifre);

                            conn.Open();
                            // Sorguyu çalıştır ve etkilenen satır sayısını al
                            int rowsAffected = command.ExecuteNonQuery();
                            if (rowsAffected > 0)
                            {
                                // Başarılı bir şekilde eklendiğini kullanıcıya bildir
                                Label1.Text = "Kayıt başarıyla eklendi";
                                txt_ad.Text = "";
                                txt_mail.Text = "";
                                txt_soyad.Text = "";
                                txt_tel.Text = "";
                                txt_username.Text = "";
                            }
                            else
                            {
                                // Ekleme işlemi başarısız olduysa kullanıcıya hata mesajı göster
                                Label1.Text = "Kayıt eklenirken bir hata oluştu";
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        // Hata oluştuğunda kullanıcıya hata mesajı göster
                        Label1.Text = "Bir hata oluştu: " + ex.Message;
                    }
                
            
                 }
            }
        }

        protected void btn_home_Click(object sender, EventArgs e)
        {
            string script = "if (!confirm('Ana sayfaya dönmek istediğinizden emin misiniz?')) return;";
            ClientScript.RegisterStartupScript(this.GetType(), "redirect", script, true);
            Response.Redirect("~/giris.aspx");
        }
    }
}