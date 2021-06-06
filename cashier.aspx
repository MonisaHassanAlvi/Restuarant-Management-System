<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cashier.aspx.cs" Inherits="project.cashier" %>

<!doctype html>
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Cashier</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="apple-touch-icon" href="apple-touch-icon.png" />


    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css' />
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="assets/css/bootstrap-theme.min.css" />
    <!--For Plugins external css-->
    <link href="assets/css/animate/animate.css" rel="stylesheet" />
    <link href="assets/css/plugins.css" rel="stylesheet" />
    <!--Theme custom css -->
    <link href="assets/css/style.css" rel="stylesheet" />

    <!--Theme Responsive css-->
    <link href="assets/css/responsive.css" rel="stylesheet" />

    <script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>
<body>
   <div class='preloader'><div class='loaded'>&nbsp;</div></div>
   
        <header id="home" class="navbar-fixed-top">
            <div class="header_top_menu clearfix">
                <div class="container">
                    <div class="row">
                        <div class="col-md-5 col-md-offset-3 col-sm-12 text-right">
                           
                        </div>

                    </div>
                </div>
            </div>
            <!-- End navbar-collapse-->
            <div class="main_menu_bg">
                <div class="container">
                    <div class="row">
                        <nav class="navbar navbar-default">
                            <div class="container-fluid">
                                <!-- Brand and toggle get grouped for better mobile display -->
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                    <a class="navbar-brand our_logo" href="#"><img src="assets/images/logo.png" alt="" /></a>
                                </div>
                                <!-- Collect the nav links, forms, and other content for toggling -->
                                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                   
                                </div><!-- /.navbar-collapse -->                          </div><!-- /.container-fluid -->
                        </nav>
                    </div>
                </div>
            </div>
        </header> <!-- End Header Section -->
     <form runat="server">
        <section id="slider" class="slider" >
            <div class="slider_overlay">
                <div class="container">
                    <div class="row">
                        <div class="main_slider text-center">
                            <div class="col-md-12">
                                <div class="main_slider_content wow zoomIn" data-wow-duration="1m">
                                    <h1>Foody Love</h1>
                                    <p style="font-family:cursive ">CASHIER</p>

                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>

        <section id="abouts" class="abouts" runat="server">
            <div class="container">
                <div class="row">
                    <div class="abouts_content">
                        <div class="col-md-6">
                            <div class="single_abouts_text text-center wow slideInLeft" data-wow-duration="1s">
                                <img src="assets/images/ab.png" alt="" />
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="single_abouts_text wow slideInRight" data-wow-duration="1s">
                                <br>
                                     <br>
                                <h4>Order</h4>
                                 <div class="w3-display-middle" runat="server">
                                     <br>
                                     <br> 
                                     <br>
                                        <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="TAKE AWAY" OnClick="Button1_Click" />
                                   &nbsp; &nbsp; &nbsp; 
                                     <asp:Button ID="Button2" runat="server" class="btn btn-primary" Text="RESERVATION" OnClick="Button2_Click" />
                                   &nbsp; &nbsp; &nbsp; 
                                      <asp:Button ID="Button3" runat="server" class="btn btn-primary" Text="DELIVERY" OnClick="Button3_Click" />
                                  
                             
                                  
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="footer_widget" class="footer_widget" runat="server">
            <div class="container">
                <div class="row">
                    <div class="footer_widget_content text-center">
                        <div class="col-md-4">
                            <div class="single_widget wow fadeIn" data-wow-duration="2s">
                                <h3>Contact Us</h3>

                                <div class="single_widget_info">
                                    <p>
                                        112-Legere ancillae vix ne.

                                        <span>Te elit putent propriae eum,</span>
                                        <span>aliquip nominati</span>
                                        <span class="phone_email">phone: 00 000 000</span>
                                        <span>Email: support@templatemela.com</span>
                                    </p>
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="single_widget wow fadeIn" data-wow-duration="4s">
                                <h3>OPEN TIMING</h3>

                                <div class="single_widget_info">
                                    <p>
                                        <span class="date_day">Monday To Friday</span>
                                        <span>8:00am to 10:00pm</span>
                                        <span>11:00am to 10:00pm</span>

                                        <span class="date_day">Saturday & Sunday</span>
                                        <span>10:00am to 11:00pm</span>
                                        <span>11:00am to 12:00pm</span>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="single_widget wow fadeIn" data-wow-duration="5s">
                                <h3>&nbsp;</h3>

                                <div class="single_widget_form text-left">
                                   
                                        <div class="form-group">
                                            &nbsp;
                                        </div>
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>


        <!--Footer-->
        <footer id="footer" class="footer">
            <div class="container text-center">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="copyright wow zoomIn" data-wow-duration="3s">
                            <p>Made with <i class="fa fa-heart"></i> by Monisa, Rahmeen, Alishbah and Jawad. All Rights Reserved</p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

        <div class="scrollup">
            <a href="#"><i class="fa fa-chevron-up"></i></a>
        </div>


        <script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
        <script src="assets/js/vendor/bootstrap.min.js"></script>

        <script src="assets/js/jquery-easing/jquery.easing.1.3.js"></script>
        <script src="assets/js/wow/wow.min.js"></script>
        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/main.js"></script>
</body>
</html>


