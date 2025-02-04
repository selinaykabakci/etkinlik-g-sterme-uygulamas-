<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ayarlar.aspx.cs" Inherits="Ip_proje.Ayarlar" %>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <title>Hexashop - Contact Page</title>


    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">

    <link rel="stylesheet" href="assets/css/templatemo-hexashop.css">

    <link rel="stylesheet" href="assets/css/owl-carousel.css">

    <link rel="stylesheet" href="assets/css/lightbox.css">
<!--

TemplateMo 571 Hexashop

https://templatemo.com/tm-571-hexashop

-->
    </head>
    
    <body>
    
    <!-- ***** Preloader Start ***** -->
    <div id="preloader">
        <div class="jumper">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>  
    <!-- ***** Preloader End ***** -->
    
    
       <!-- ***** Header Area Start ***** -->
    <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- ***** Logo Start ***** -->
                        <a href="#" class="logo">
                            <img src="assets/images/logoss.png">
                        </a>
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                             <li class="scroll-to-section"><a href="AnaSayfa.aspx" >Home</a></li>
                            <li class="scroll-to-section"><a href="Ayarlar.aspx" class="active" >Ayarlar</a></li>
                            <li class="scroll-to-section"><a href="#" id="exit-link">Çıkış</a></li>                           
                        <script>
                            document.getElementById('exit-link').addEventListener('click', function (event) {
                                event.preventDefault();
                                if (confirm('Çıkmak istediğinize emin misiniz?')) {
                                    window.location.href = 'giris.aspx';
                                }
                            });
                        </script>
                        <!-- ***** Menu End ***** -->
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->

    <!-- ***** Main Banner Area Start ***** -->
    <div class="page-heading about-page-heading" id="top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="inner-content">
                        <h2>Ayarlar</h2>
                        <span>Hesap bilgilerinizi buradan güncelleyebilirsiniz.</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Main Banner Area End ***** -->

    <!-- ***** Contact Area Starts ***** -->
    <div class="contact-us">
        <div class="container">
            <div class="row">

                <div class="col-lg-6">
                    <div class="section-heading">
                        <h2>Ayarlarınla mı oyanayacaksın :D</h2>
                        <span></span>
                    </div>
                    <form id="contact" runat="server" method="post">
                        <div class="row">
                          <div class="col-lg-7">
                            <fieldset>
                                <asp:TextBox ID="txt_username" CssClass="text-center" runat="server" required=""></asp:TextBox>
                            </fieldset>    
                              <br/>
                          </div>
                          <div class="col-lg-6">
                            <fieldset>
                                <asp:TextBox ID="txt_name" CssClass="text-center" runat="server" required=""></asp:TextBox>
                             
                            </fieldset>
                              
                              <br />
                          </div>
                            <div class="col-lg-6">
                            <fieldset>
                                <asp:TextBox ID="txt_surname" CssClass="text-center" runat="server" required=""></asp:TextBox>                             
                            </fieldset>
                          </div>
                         <div class="col-lg-6">
                            <fieldset>
                                <asp:TextBox ID="txt_mail" CssClass="text-center" runat="server" TextMode="Email" required=""></asp:TextBox>                             
                            </fieldset>
                          </div>
                          <div class="col-lg-6">
                            <fieldset>
                                <asp:TextBox ID="txt_phone" CssClass="text-center" runat="server" TextMode="Phone" required=""></asp:TextBox>   
                            </fieldset>
                              <br />
                          </div>
                            <div class="col-lg-6">
  <fieldset>
      <asp:TextBox ID="txt_pass" CssClass="text-center" placeholder="Yeni Şifre" runat="server" TextMode="Password" required=""></asp:TextBox>                             
  </fieldset>
</div>
<div class="col-lg-6">
  <fieldset>
      <asp:TextBox ID="txt_pass2" CssClass="text-center" placeholder="Yeni Şifreyi tekrar giriniz." runat="server" TextMode="Password" required=""></asp:TextBox>   
  </fieldset>
    <br />
</div>
                          <div class="col-lg-12">
                                                
                                <asp:Button ID="Button1" runat="server" Text="Kaydet" OnClick="Button1_Click" />
                         
                                </div>
                        </div>
                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                      </form>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Contact Area Ends ***** -->


 <!-- ***** Footer Start ***** -->
 <footer>
     <div class="container">
         <div class="row">
             <div class="col-lg-3">
                 <div class="first-item">
                     <div class="logo">
                         <img src="assets/images/logosss.png" alt="hexashop ecommerce templatemo"/> 
                     </div>
                     <ul>
                         <li><a href="#">34586 Beşiktaş / İstanbul</a></li>
                         <li><a href="#">selinaysu@gruop.com</a></li>
                         <li><a href="#">010-020-0340</a></li>
                     </ul>
                 </div>
             </div>

            
            
             <div class="col-lg-12">
                 <div class="under-footer">
                     <p>Copyright © 2022 SelinaySu Gr., Ltd. All Rights Reserved. 
                     
                     <br>Design: <a href="https://templatemo.com" target="_parent" title="free css templates">TemplateMo</a></p>
                     <ul>
                         <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                         <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                         <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                         <li><a href="#"><i class="fa fa-behance"></i></a></li>
                     </ul>
                 </div>
             </div>
         </div>
     </div>
 </footer>
    
    

    <!-- jQuery -->
    <script src="assets/js/jquery-2.1.0.min.js"></script>

    <!-- Bootstrap -->
    <script src="assets/js/popper.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!-- Plugins -->
    <script src="assets/js/owl-carousel.js"></script>
    <script src="assets/js/accordions.js"></script>
    <script src="assets/js/datepicker.js"></script>
    <script src="assets/js/scrollreveal.min.js"></script>
    <script src="assets/js/waypoints.min.js"></script>
    <script src="assets/js/jquery.counterup.min.js"></script>
    <script src="assets/js/imgfix.min.js"></script> 
    <script src="assets/js/slick.js"></script> 
    <script src="assets/js/lightbox.js"></script> 
    <script src="assets/js/isotope.js"></script> 
    
    <!-- Global Init -->
    <script src="assets/js/custom.js"></script>

    <script>

        $(function() {
            var selectedClass = "";
            $("p").click(function(){
            selectedClass = $(this).attr("data-rel");
            $("#portfolio").fadeTo(50, 0.1);
                $("#portfolio div").not("."+selectedClass).fadeOut();
            setTimeout(function() {
              $("."+selectedClass).fadeIn();
              $("#portfolio").fadeTo(50, 1);
            }, 500);
                
            });
        });

    </script>

  </body>

</html>
