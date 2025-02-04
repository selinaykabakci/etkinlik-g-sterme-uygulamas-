<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="Ip_proje.giris" %>


<!doctype html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
<link rel="stylesheet" href="a/fonts/icomoon/style.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">

<link rel="stylesheet" href="a/css/bootstrap.min.css">

<link rel="stylesheet" href="a/css/style.css">
<title>SelinaySu Group</title>
    <style type="text/css">
        .auto-style1 {
            left: 15px;
            top: 87%;
        }
    </style>
    <link href="Tasarim.css" rel="stylesheet" />
</head>
<body>
<div class="d-lg-flex half">
<div class="bg order-1 order-md-2" style="background-image: url('a/images/kons.jpg');"></div>
<div class="contents order-2 order-md-1">
<div class="container">
<div class="row align-items-center justify-content-center">
<div class="col-md-7">
<div class="mb-4">
<h3>Giriş Yap</h3>
<p class="mb-4">Sen de bize katıl. Etkinlik fırsatlarından yararlan</p>
    <asp:Label ID="Label1" runat="server" ></asp:Label>
</div>
<form action="#" method="post" runat="server">
<div class="form-group first">
<label for="username" class="auto-style1">Kullanıcı Adı</label>
<asp:TextBox ID="txt_username" runat="server" CssClass="form-control"></asp:TextBox>
</div>
<div class="form-group last mb-3">
<label for="password">Şifre</label>
<asp:TextBox ID="txt_password" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
</div>
<div class="d-flex mb-5 align-items-center">
<label class="control control--checkbox mb-0"><span class="caption">Beni Hatırla</span>
<input type="checkbox" checked="checked" />
<div class="control__indicator"></div>
</label>
<span class="ml-auto"><a href="#" class="forgot-pass"></a></span>
</div>
<asp:Button ID="btn_Login" runat="server" Text="Giriş Yap" CssClass="btn btn-block btn-primary" OnClick="btn_Login_Click" />
<span class="d-block text-center my-4 text-muted">&mdash; veya &mdash;</span>
<div class="social-login">
    <asp:Button ID="btn_singup" runat="server" Text="Kayıt Ol" CssClass="btn btn-primary btn-block buton" OnClick="btn_singup_Click" />

    <br />

    <asp:Button ID="btn_admin" runat="server" Text="Yönetici Girişi" CssClass="btn btn-primary btn-block butona" OnClick="btn_admin_Click" />

</div>
</form>
</div>
</div>
</div>
</div>
</div>
<script src="a/js/jquery-3.3.1.min.js"></script>
<script src="a/js/popper.min.js"></script>
<script src="a/js/bootstrap.min.js"></script>
<script src="a/js/main.js"></script>
<script defer src="https://static.cloudflareinsights.com/beacon.min.js/vef91dfe02fce4ee0ad053f6de4f175db1715022073587" integrity="sha512-sDIX0kl85v1Cl5tu4WGLZCpH/dV9OHbA4YlKCuCiMmOQIk4buzoYDZSFj+TvC71mOBLh8CDC/REgE0GX0xcbjA==" data-cf-beacon='{"rayId":"88c6d6ec9b4050e7","version":"2024.4.1","token":"cd0b4b3a733644fc843ef0b185f98241"}' crossorigin="anonymous"></script>
</body>
</html>

