using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ip_proje
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {
            string username = txt_username.Text;
            string password = txt_password.Text;

            if (!string.IsNullOrEmpty(username) && !string.IsNullOrEmpty(password))
            {
                if (username == "admin" && password == "1234")
                {
                   Server.Transfer("adminlist.aspx");
                }
                else
                {
                    Label1.Text = "Kullanıcı Adı veya Şifre Yanlıştır";
                    username = ""; 
                }
            }
            else
            {
                if (string.IsNullOrEmpty(username) && string.IsNullOrEmpty(password))
                {
                    Label1.Text = "Kullanıcı Adı ve Şifre Boş Bırakılamaz";
                    username = "";
                }
                else if (string.IsNullOrEmpty(username))
                {
                    Label1.Text = "Kullanıcı Adı Boş Bırakılamaz";
                    
                }
                else if (string.IsNullOrEmpty(password))
                {
                    Label1.Text = "Şifre Boş Bırakılamaz";
                    username = "";
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