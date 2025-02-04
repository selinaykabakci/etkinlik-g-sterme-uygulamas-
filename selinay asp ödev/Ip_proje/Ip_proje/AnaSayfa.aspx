<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="Ip_proje.AnaSayfa" %>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <title>SelinaySu Group</title>


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
                             <li class="scroll-to-section"><a href="#top" class="active">Home</a></li>
                            <li class="scroll-to-section"><a href="#men">Konser</a></li>
                            <li class="scroll-to-section"><a href="#women">Tiyatro</a></li>
                            <li class="scroll-to-section"><a href="#kids">Stand Up</a></li>
                            <li class="scroll-to-section"><a href="Ayarlar.aspx">Ayarlar</a></li>
                            <li class="scroll-to-section"><a href="#" id="exit-link">Çıkış</a></li>                           
                        <script>
                            document.getElementById('exit-link').addEventListener('click', function (event) {
                                event.preventDefault();
                                if (confirm('Çıkmak istediğinize emin misiniz?')) {
                                    // Place the logout logic here, for example, redirect to a logout URL
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
    <div class="main-banner" id="top">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6">
                    <div class="left-content">
                        <div class="thumb">
                            <div class="inner-content">
                                <h4>Eğlence Bizimle</h4>
                                <span></span>
                                <div class="main-border-button">
                                    <a href="#">Haydi sen de katıl!!</a>
                                </div>
                            </div>
                            <img src="assets/images/SelinaySu.png" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="right-content">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="right-first-image">
                                    <div class="thumb">
                                        <div class="inner-content">
                                            <h4></h4>
                                            <span></span>
                                        </div>
                                        <div class="hover-content">
                                            <div class="inner">
                                                <h4>Aydınlıkevler</h4>
                                                <p>Burası Aydınlıkevler ve babaannem Amerika’ya karşı!!!</p>
                                                <div class="main-border-button">
                                                    <a href="https://www.biletix.com/etkinlik-grup/316381073/TURKIYE/tr?int_cmp_name=316381073&int_cmp_id=TR-ALL-TURKIYE-tr&int_cmp_creative=ALL-spotlight-3_2&tm_link=tm_ALL_spotlight_316381073">Bilet Al</a>
                                                </div>
                                            </div>
                                        </div>
                                        <img src="assets/images/aydinlikk-evler-son.png">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="right-first-image">
                                    <div class="thumb">
                                        <div class="inner-content">
                                            <h4></h4>
                                            <span></span>
                                        </div>
                                        <div class="hover-content">
                                            <div class="inner">
                                                <h4>Simge Sağın</h4>
                                                <p>Simge, 8 Haziran akşamı Atlantis Yapım organizasyonu ile BtcTurk Vadi Açıkhava’da!</p>
                                                <div class="main-border-button">
                                                    <a href="https://www.biletix.com/etkinlik/3DS49/TURKIYE/tr?int_cmp_name=3DS49&int_cmp_id=TR-ALL-TURKIYE-tr&int_cmp_creative=ALL-featured-20_2&tm_link=tm_ALL_featured_3DS49">Bilet Al</a>
                                                </div>
                                            </div>
                                        </div>
                                        <img src="assets/images/8663.jpg">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="right-first-image">
                                    <div class="thumb">
                                        <div class="inner-content">
                                            <h4></h4>
                                            <span></span>
                                        </div>
                                        <div class="hover-content">
                                            <div class="inner">
                                                <h4>Baturay Özdemir Stand Up</h4>
                                                <p>Baturay Özdemir, "Yerli ve Kirli" ve "Cevap Hakkı" gösterileriyle milyonlara ulaştı; yeni gösterisiyle Türkiye turnesine devam ediyor.</p>
                                                <div class="main-border-button">
                                                    <a href="https://www.biletix.com/etkinlik-grup/354196773/TURKIYE/tr?int_cmp_name=354196773&int_cmp_id=TR-page-TURKIYE-tr&int_cmp_creative=page-hoevent_section-&tm_link=tm_page_hoevent_section_354196773">Bilet Al</a>
                                                </div>
                                            </div>
                                        </div>
                                        <img src="assets/images/baturayozdemirgrupp-354196773.jpg">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="right-first-image">
                                    <div class="thumb">
                                        <div class="inner-content">
                                            <h4></h4>
                                            <span></span>
                                        </div>
                                        <div class="hover-content">
                                            <div class="inner">
                                                <h4>Andrea Bocelli </h4>
                                                <p>Dünyanın en önemli tenoru Andrea Bocelli İstanbul’a geliyor!</p>
                                                <div class="main-border-button">
                                                    <a href="https://www.biletix.com/etkinlik-grup/425334168/TURKIYE/tr?int_cmp_name=425334168&int_cmp_id=TR-page-TURKIYE-tr&int_cmp_creative=page-hoevent_section-&tm_link=tm_page_hoevent_section_425334168">Bilet Al</a>
                                                </div>
                                            </div>
                                        </div>
                                        <img src="assets/images/andreabocelli-NEWgrupgorsel.jpg" />
                                    </div>
                                </div>
                            </div>
                         <div class="col-lg-6">
                            <div class="right-first-image">
                                <div class="thumb">
                                    <div class="inner-content">
                                        <h4></h4>
                                        <span></span>
                                    </div>
                                    <div class="hover-content">
                                        <div class="inner">
                                            <h4>Plastik Aşklar</h4>
                                            <p>Usta oyuncu Oya Başar’ın ve başarılı oyuncu Ebru Kural’ın muhteşem performansı ile, kendinizden çok şey bulacağınız bir kahkaha tufanına hazır olun</p>
                                            <div class="main-border-button">
                                                <a href="https://www.biletix.com/etkinlik-grup/220041646/TURKIYE/tr?int_cmp_name=220041646&int_cmp_id=TR-ART-TURKIYE-tr&int_cmp_creative=ART-spotlight-126_7&tm_link=tm_ART_spotlight_220041646">Bilet Al</a>
                                            </div>
                                        </div>
                                    </div>
                                    <img src="assets/images/plastikasklar2021-0ANU5.png">
                                </div>
                            </div>
                        </div>
                                                        <div class="col-lg-6">
                                <div class="right-first-image">
                                    <div class="thumb">
                                        <div class="inner-content">
                                            <h4></h4>
                                            <span></span>
                                        </div>
                                        <div class="hover-content">
                                            <div class="inner">
                                                <h4>Anadolu Ateşi  </h4>
                                                <p>Anadolu Ateşi yanmaya devam ediyor!</p>
                                                <div class="main-border-button">
                                                    <a href="https://www.biletix.com/etkinlik/34A04/TURKIYE/tr">Bilet Al</a>
                                                </div>
                                            </div>
                                        </div>
                                        <img src="assets/images/vrgbj_anadolu.png" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>                  
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Main Banner Area End ***** -->

    <!-- ***** Men Area Starts ***** -->
    <section class="section" id="men">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="section-heading">
                        <h2>Konserler</h2>
                        <span>Aradığın tüm konser biletleri SelinaySu Groupta.</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="men-item-carousel">
                        <div class="owl-men-item owl-carousel">
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="https://www.biletix.com/etkinlik/3LW01/TURKIYE/tr"><i class="fa fa-eye"></i></a></li>
                                        </ul>
                                    </div>
                                    <img src="assets/images/images.jpeg" alt="" /> 
                                </div>
                                <div class="down-content">
                                    <h4>Serdar Ortaç</h4>
                                    <p> 2 Haziran akşamı İzmir Tarihi Havagazı Fabrikası’nda!</p>
                                    <span>₺550 - ₺1000 </span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="https://www.biletix.com/etkinlik/3L723/TURKIYE/tr"><i class="fa fa-eye"></i></a></li>                                          
                                        </ul>
                                    </div>
                                   <img src="assets/images/images%20(1).jpeg" alt=""/>
                                </div>
                                <div class="down-content">
                                    <h4>Berkay</h4>
                                    <p>Berkay, KerkiSolfej organizasyonu ile şehrine geliyor!</p>
                                    <span>₺915 - ₺1995</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="https://www.biletix.com/etkinlik/3SEK1/TURKIYE/tr?int_cmp_name=3SEK1&int_cmp_id=TR-page-TURKIYE-tr&int_cmp_creative=page-hoevent_section-&tm_link=tm_page_hoevent_section_3SEK1"><i class="fa fa-eye"></i></a></li>
                                        </ul>
                                    </div>
                                    <img src="assets/images/Yildiz-Tilbe.png" alt=""/>
                                </div>
                                <div class="down-content">
                                    <h4>Yıldız Tilbe</h4>
                                    <p>Aşıkların, üzülenlerin, yalnızların şarkıcısı Yıldız Tilbe, 9 Haziran 2024 Pazar günü Beşiktaş Tüpraş Stadyumu’nda</p>
                                    <span>₺1555 - ₺6000</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="https://www.biletix.com/etkinlik/3L782/TURKIYE/tr"><i class="fa fa-eye"></i></a></li>     
                                        </ul>
                                    </div>
                                   <img src="assets/images/Buray.jpg" alt=""/>
                                </div>
                                <div class="down-content">
                                    <h4>Buray</h4>
                                    <p>Buray, KerkiSolfej organizasyonu ile sizlerle buluşuyor.</p>
                                    <span>₺3990</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Men Area Ends ***** -->

    <!-- ***** Women Area Starts ***** -->
    <section class="section" id="women">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="section-heading">
                        <h2>Tiyatro</h2>
                        <span>En güzel tiyatro etkinlikleri SelinaySu Group'ta!!!</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="women-item-carousel">
                        <div class="owl-women-item owl-carousel">
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="https://www.biletix.com/performance/3H186/005/TURKIYE/tr"><i class="fa fa-eye"></i></a></li>
                                        </ul>
                                    </div>
                                   <img src="assets/images/ceviz-adam-muzikali-2023101111282cd2e8852ba478e8874ed038b65ad10.jpg" alt="" />
                                </div>
                                <div class="down-content">
                                    <h4>Ceviz Adam Müzikali</h4>
                                    <p>Haydi çocuklar “Ceviz Adam Müzikali” sahnede sizleri bekliyor…</p>
                                    <span>₺250</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="https://www.biletix.com/etkinlik/3M229/TURKIYE/tr"><i class="fa fa-eye"></i></a></li> 
                                        </ul>
                                    </div>
                                   <img src="assets/images/milenaya-mektuplar-202456236565b3cf12d291c4b69ba3aac9ac50d7cdf.jpg" alt="" />
                                </div>
                                <div class="down-content">
                                    <h4>Milena'ya Mektuplar</h4>
                                    <p>Mesafelerin hiçbir önemi yoktur bazen. İki kalp birbirini o kadar sever ki göz görmese de gönül unutmaz. İşte öyle bir aşk hikayesi...</p>
                                    <span>₺150 - ₺180</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="https://www.biletix.com/etkinlik-grup/71066880/TURKIYE/tr"><i class="fa fa-eye"></i></a></li>
                                           </ul>
                                    </div>
                                    <img src="assets/images/suc-ve-ceza-202392011342856f0482ca2d545c39e34864b4116b687.jpg" alt="" />
                                </div>
                                <div class="down-content">
                                    <h4>Suç ve Ceza</h4>
                                    <p>“İnsanın ruhunu yücelten bir acı, ucuz bir mutluluktan daha değerlidir.” </p>
                                    <span>₺183 - ₺283</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="single-product.html"><i class="fa fa-eye"></i></a></li>                                           
                                        </ul>
                                    </div>
                                    <img src="assets/images/korkuyu-beklerken-1.jpg" alt=""/>
                                </div>
                                <div class="down-content">
                                    <h4>Korkuyu Beklerken</h4>
                                    <p>Korkuyu Beklerken oyunu, Türkiye Turnesinde!</p>
                                    <span>₺286 - ₺336</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Women Area Ends ***** -->

    <!-- ***** Kids Area Starts ***** -->
    <section class="section" id="kids">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="section-heading">
                        <h2>Stand Up</h2>
                        <span>En sevdiğiniz komedyenlerin stand-up gösterisi biletleri burada. Şehrinizdeki tüm tek kişilik gösterileri inceleyin ve kahkahaya doymak için hemen bilet alın!</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="kid-item-carousel">
                        <div class="owl-kid-item owl-carousel">
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="https://mobilet.com/tr/event/25174/"><i class="fa fa-eye"></i></a></li>
                                        </ul>
                                    </div>
                                    <img src="assets/images/MV5BZTQ0MGFhNmItNmM3Mi00NjFlLThmMDUtOTg1YzM0N2U1MTc1XkEyXkFqcGdeQXVyNDg4MjkzNDk@._V1_.jpg"  alt="" />
                                </div>
                                <div class="down-content">
                                    <h4>Konuşanlar</h4>
                                    <p>‘’Orantısız Mizah’ı alan efsane Talk Show formatı "Konuşanlar’’ ünlü konuk ve sürpriz konularıyla mizahın daha önce girilmeyen sınırlarını paramparça ediyor.</p>
                                    <span>₺300</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="https://www.passo.com.tr/tr/etkinlik/cmxxiv-zorlupsm-turkcell-sahnesi-biletleri/6437323"><i class="fa fa-eye"></i></a></li>

                                        </ul>
                                    </div>
                                    <img src="assets/images/cmxxiv.jpg" alt=""/>
                                </div>
                                <div class="down-content">
                                    <h4>CMXXIV</h4>
                                    <p> Cem Yılmaz, "CMXXIV" adını taşıyan yeni performansı ile, 7 Şubat 2024 tarihinden itibaren Zorlu PSM Turkcell Sahnesi’nde</p>
                                    <span>₺750 - ₺10000</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="https://www.biletix.com/performance/30C29/001/TURKIYE/tr"><i class="fa fa-eye"></i></a></li>
                                        </ul>
                                    </div>
                                    <img src="assets/images/8674.jpg" alt=""/>
                                </div>
                                <div class="down-content">
                                    <h4>Tolgshow</h4>
                                    <p>‘Arkadaşım’ karakteri ile milyonları güldüren Tolga Çevik sahnede artık bir klasik haline gelen doğaçlama oyununun Türkiye Turnesi’yle izleyicinin karşısına çıkıyor.</p>
                                    <span>₺800</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>                          
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Kids Area Ends ***** -->

    
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

