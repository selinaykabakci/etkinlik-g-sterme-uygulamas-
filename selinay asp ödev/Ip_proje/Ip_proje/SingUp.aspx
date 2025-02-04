<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SingUp.aspx.cs" Inherits="Ip_proje.giris" %>

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
<h3>Üye Ol</h3>
<p class="mb-4">Sen de bize katıl. Etkinlik fırsatlarından yararlan</p>
</div>
<form action="#" method="post" runat="server">
<div class="form-group first">
<label for="txt_username" class="auto-style1">Kullanıcı Adı</label>
<asp:TextBox ID="txt_username" runat="server" CssClass="form-control"></asp:TextBox>
</div>
 <div class="form-group  ">
<label for="txt_ad">Adınız</label>
<asp:TextBox ID="txt_ad" runat="server" CssClass="form-control"></asp:TextBox>
</div>
     <div class="form-group">
<label for="txt_soyad">Soyadınız</label>
<asp:TextBox ID="txt_soyad" runat="server" CssClass="form-control"></asp:TextBox>
</div>
     <div class="form-group">
<label for="txt_tel">Telefon Numaranız</label>
<asp:TextBox ID="txt_tel" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
</div>
     <div class="form-group ">
<label for="txt_mail">Mailiniz</label>
<asp:TextBox ID="txt_mail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
</div>
    <div class="form-group">
<label for="txt_password">Şifre</label>
<asp:TextBox ID="txt_password" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
</div>
    <div class="form-group last mb-3">
<label for="txt_pascont">Şifre Doğrula</label>
<asp:TextBox ID="txt_pascont" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
</div>
<asp:Button ID="btn_Login" runat="server" Text="Kayıt Ol" CssClass="btn btn-block btn-primary" />
<span class="d-block text-center my-4 text-muted">&mdash; veya &mdash;</span>
<div class="social-login">
    <asp:Button ID="btn_home" runat="server" Text="Ana Sayfaya Dön" CssClass="btn btn-primary btn-block buton" />
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

