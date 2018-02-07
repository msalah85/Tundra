﻿<%@ Page Title="شركة" Language="C#" AutoEventWireup="true" CodeFile="CarParts.aspx.cs" Inherits="CarParts" %>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Car Parts</title>
    <link rel="dns-prefetch" href="//maps.googleapis.com">
    <link rel="dns-prefetch" href="//s.w.org">
    <link rel="alternate" type="application/rss+xml" title="RentIT » Feed" href="http://rentit.wpmix.net/feed/">
    <link rel="alternate" type="application/rss+xml" title="RentIT » Comments Feed" href="http://rentit.wpmix.net/comments/feed/">
    <link rel="alternate" type="application/rss+xml" title="RentIT » Products Feed" href="http://rentit.wpmix.net/shop/feed/">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <script src="http://rentit.wpmix.net/wp-includes/js/wp-emoji-release.min.js?ver=4.9.2" type="text/javascript" defer=""></script>
    <style type="text/css">
        img.wp-smiley,
        img.emoji {
            display: inline !important;
            border: none !important;
            box-shadow: none !important;
            height: 1em !important;
            width: 1em !important;
            margin: 0 .07em !important;
            vertical-align: -0.1em !important;
            background: none !important;
            padding: 0 !important;
        }
        .ser{
                position: absolute;
    top: 13px;
    left: 87%;
        }
    </style>

    <link rel="stylesheet" id="woocommerce-layout-css" href="http://rentit.wpmix.net/wp-content/plugins/woocommerce/assets/css/woocommerce-layout.css?ver=3.2.6" type="text/css" media="all">
    <link rel="stylesheet" id="woocommerce-smallscreen-css" href="http://rentit.wpmix.net/wp-content/plugins/woocommerce/assets/css/woocommerce-smallscreen.css?ver=3.2.6" type="text/css" media="only screen and (max-width: 768px)">
    <link rel="stylesheet" id="woocommerce-general-css" href="http://rentit.wpmix.net/wp-content/plugins/woocommerce/assets/css/woocommerce.css?ver=3.2.6" type="text/css" media="all">
    <link rel="stylesheet" id="renita_bootstrap.min-css" href="http://rentit.wpmix.net/wp-content/themes/rentit/js/bootstrap/css/bootstrap.min.css?ver=4.9.2" type="text/css" media="all">
    <link rel="stylesheet" id="renita_bootstrap-select-css" href="http://rentit.wpmix.net/wp-content/themes/rentit/js/bootstrap-select/css/bootstrap-select.min.css?ver=4.9.2" type="text/css" media="all">
    <link rel="stylesheet" id="renita_font-awesome-css" href="http://rentit.wpmix.net/wp-content/themes/rentit/js/fontawesome/css/font-awesome.min.css?ver=4.9.2" type="text/css" media="all">
    <link rel="stylesheet" id="renita_prettyPhoto-css" href="http://rentit.wpmix.net/wp-content/themes/rentit/js/prettyphoto/css/prettyPhoto.css?ver=4.9.2" type="text/css" media="all">
    <link rel="stylesheet" id="renita_owl.carousel.min-css" href="http://rentit.wpmix.net/wp-content/themes/rentit/js/owl-carousel2/assets/owl.carousel.min.css?ver=4.9.2" type="text/css" media="all">
    <link rel="stylesheet" id="renita_owl.theme.default.min-css" href="http://rentit.wpmix.net/wp-content/themes/rentit/js/owl-carousel2/assets/owl.theme.default.min.css?ver=4.9.2" type="text/css" media="all">
    <link rel="stylesheet" id="renita_animate.min-css" href="http://rentit.wpmix.net/wp-content/themes/rentit/js/animate/animate.min.css?ver=4.9.2" type="text/css" media="all">
    <link rel="stylesheet" id="renita_swiper.min-css" href="http://rentit.wpmix.net/wp-content/themes/rentit/js/swiper/css/swiper.min.css?ver=4.9.2" type="text/css" media="all">
    <link rel="stylesheet" id="renita_bootstrap-datetimepicker-css" href="http://rentit.wpmix.net/wp-content/themes/rentit/js/datetimepicker/css/bootstrap-datetimepicker.min.css?ver=4.9.2" type="text/css" media="all">
    <link rel="stylesheet" id="renita_theme1-css" href="http://rentit.wpmix.net/wp-content/themes/rentit/css/theme.css?ver=4.9.2" type="text/css" media="all">
    <link rel="stylesheet" id="renita_wp-css" href="http://rentit.wpmix.net/wp-content/themes/rentit/style.css?ver=4.9.2" type="text/css" media="all">
    <link rel="stylesheet" id="renita_jquery-style-css" href="http://rentit.wpmix.net/wp-content/themes/rentit/css/jquery-ui.css?ver=4.9.2" type="text/css" media="all">
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-includes/js/jquery/jquery.js?ver=1.12.4"></script>
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1"></script>
    <script type="text/javascript">
        /* <![CDATA[ */
        var wc_add_to_cart_params = { "ajax_url": "\/wp-admin\/admin-ajax.php", "wc_ajax_url": "http:\/\/rentit.wpmix.net\/?wc-ajax=%%endpoint%%", "i18n_view_cart": "View cart", "cart_url": "http:\/\/rentit.wpmix.net\/cart\/", "is_cart": "", "cart_redirect_after_add": "yes" };
        /* ]]> */
    </script>
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-content/plugins/woocommerce/assets/js/frontend/add-to-cart.min.js?ver=3.2.6"></script>
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-content/plugins/js_composer/assets/js/vendors/woocommerce-add-to-cart.js?ver=5.4.4"></script>
    <!--[if lt IE 9]>
<script type='text/javascript' src='http://rentit.wpmix.net/wp-content/themes/rentit/js/iesupport/html5shiv.js?ver=4.9.2'></script>
<![endif]-->
    <!--[if lt IE 9]>
<script type='text/javascript' src='http://rentit.wpmix.net/wp-content/themes/rentit/js/iesupport/respond.min.js?ver=4.9.2'></script>
<![endif]-->

</head>
<body  id="home" class="archive paged post-type-archive post-type-archive-product paged-2 post-type-paged-2 wide woocommerce woocommerce-page product-vw-polo-1-6-tdi-comfortline-3 wpb-js-composer js-comp-ver-5.4.4 vc_responsive">
    <form runat="server">
    <div id="preloader" style="display: none;">
        <div id="preloader-status">
            <div class="spinner">
                <div class="rect1"></div>
                <div class="rect2"></div>
                <div class="rect3"></div>
                <div class="rect4"></div>
                <div class="rect5"></div>
            </div>
            <div id="preloader-title">Loading </div>
        </div>
    </div>


    <div class="wrapper">

      

        <div class="content-area">


            <section class="page-section with-sidebar sub-page">
                <div class="container">
                    <div class="row">

                 

                        <div class="col-md-9 content  " id="content">
                            <div class="row">
                                 <% if (parts.Count() > 0) %>
                        <%{ %>
                        <%foreach (var item in parts)
                            {%>
                                <div class="col-md-6">
                                    <div class="thumbnail no-border no-padding thumbnail-car-card">
                                        <div class="media">
                                                <img src='../Public/image/carParts/_thumb/<%=item.ImageUrl %>' />
                                        </div>
                                        <div class="caption text-center">
                                            <h4 class="caption-title"><% = item.CarPartType %>
                                            </h4>
                                            <div class="caption-text">
                                               <% = item.Description %>
                                            </div>
                                            <div class="buttons">
                                                <a href="/CarPartsDetails.aspx?ID=<%= item.CarPartId%>" data-action="10126" class="btn btn-theme btn-theme-dark" >التفاصيل</a>
                                            </div>
                                            <table class="table">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <i class=""></i><% = item.Year %> </td>
                                                        <td>
                                                            <i class=""></i><% = item.Price %> </td>
                                                        <td>
                                                            <i class=""></i><% = item.CarPartType %> </td>
                                                        <td>
                                                            <i class=""></i><% = item.ModelNameAr %> </td>
                                                         <td>
                                                            <i class=""></i><% = item.MarkerNameAr %> </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                         
                            <%}
        } %>
                        <%else %>
                         <%{ %>  
                        <div class="thumbnail no-border no-padding thumbnail-car-card clearfix">
                        <div class="caption"> <h4 class="caption-title"> لا توجد بيانات متطابقة </h4>
                            </div></div><%} %>
                           

                            </div>
                       
                        </div>
                               <aside class="col-md-3 sidebar" id="sidebar">
                            <aside id="rentit_find_best_rental_car_class-2" class="widget shadow rentit_card-widget widget-find-car">
                                <h1 class="widget-title">أبحث قطع غيار</h1>
                                <div class="widget-content">
                                    <div class="">

                                        <div class="form-search light">
                                            <div class="form-group has-icon has-label">
                                                    <asp:TextBox ID="txtName" runat="server"  class="form-control" placeholder="Search ...." ></asp:TextBox><i class="fa fa-search ser"></i>


                                                </div>
                                                <div class="form-group selectpicker-wrapper">
                                                    <label>Car Maker</label>
                                                    <asp:DropDownList ID="ddlMarkers" runat="server" class="col-md-12 " style="height:40px" OnSelectedIndexChanged="ddlMarkers_SelectedIndexChanged" AutoPostBack="True">
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="form-group selectpicker-wrapper">
                                                    <label>Car Model</label>
                                                    <asp:DropDownList ID="ddlModels" runat="server" class="col-md-12 " style="height:40px" >
                                                     </asp:DropDownList>
                                                </div>
                                                <div class="form-group selectpicker-wrapper">
                                                    <label>Select car part type</label>
                                                    <asp:DropDownList ID="ddlcarPartType" runat="server" class="col-md-12 " style="height:40px">
                                                    </asp:DropDownList>
                                                </div>
                                             <br /><br />
                                            <div class="form-group selectpicker-wrapper">
                                                    <asp:DropDownList ID="ddlYears" runat="server" class="col-md-6 " style="height:40px">
                                                    </asp:DropDownList><asp:DropDownList ID="ddlToYears" runat="server" class="col-md-6 " style="height:40px">
                                                    </asp:DropDownList>
                                                    
                                               
                                                </div>
                                               
                                                
                                               
                                        </div>
                                       
                                    </div>
                                </div>
                            </aside>
  <aside id="rentit_price_filter_class-2" class="widget shadow rentit_card-widget widget-filter-price">
                                <h1 class="widget-title">PRICE</h1>
                                <div class="widget-content">
                                    <div class="">
                                            <div id="slider-range" class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all">
                                                <div class="ui-slider-range ui-widget-header ui-corner-all" style="left: 0%; width: 100%;"></div>
                                                <span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0" style="right: 0%; left: 0%;"></span>
                                                <span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0" style="left: 100%;"></span>
                                            </div>
                                            <input data-min="1" data-max="<%=Session["maxPrice"] %>" data-value_min="<%=Session["cur_minPrice"] %>" data-value_max="<%=Session["cur_maxPrice"] %>" value="<%=Session["cur_maxPrice"] %>" type="text" id="amount" readonly="">
                                            <asp:HiddenField runat="server"  id="amout_rating" value="<%= minPrice] %>"></asp:HiddenField >
                                            <asp:Button Text="Filter" runat="server" OnClick="btnSearch_Click"  class="btn btn-theme btn-theme-dark">                                               
                                            </asp:Button>
                                    </div>
                                </div>
                            </aside>
                       
                           
                        </aside>
                    </div>
                </div>
            </section>

        </div>
        <div id="to-top" class="to-top"><i class="fa fa-angle-up"></i></div>
    </div>
    </form>
    <script>
        jQuery(document).ready(function ($) {

            $('#tabs1 li a').click(function () {
                jQuery(window).trigger('resize');
            });
        });
    </script>
    <link rel="stylesheet" id="js_composer_front-css" href="http://rentit.wpmix.net/wp-content/plugins/js_composer/assets/css/js_composer.min.css?ver=5.4.4" type="text/css" media="all">
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery.blockUI.min.js?ver=2.70"></script>
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-content/plugins/woocommerce/assets/js/js-cookie/js.cookie.min.js?ver=2.1.4"></script>
    <script type="text/javascript">
        /* <![CDATA[ */
        var woocommerce_params = { "ajax_url": "\/wp-admin\/admin-ajax.php", "wc_ajax_url": "http:\/\/rentit.wpmix.net\/?wc-ajax=%%endpoint%%" };
        /* ]]> */
    </script>
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-content/plugins/woocommerce/assets/js/frontend/woocommerce.min.js?ver=3.2.6"></script>
    <script type="text/javascript">
        /* <![CDATA[ */
        var wc_cart_fragments_params = { "ajax_url": "\/wp-admin\/admin-ajax.php", "wc_ajax_url": "http:\/\/rentit.wpmix.net\/?wc-ajax=%%endpoint%%", "fragment_name": "wc_fragments_4aa05e483614ea7bd85a709db27df7d0" };
        /* ]]> */
    </script>
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-content/plugins/woocommerce/assets/js/frontend/cart-fragments.min.js?ver=3.2.6"></script>
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-includes/js/jquery/ui/core.min.js?ver=1.11.4"></script>
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-includes/js/jquery/ui/widget.min.js?ver=1.11.4"></script>
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-includes/js/jquery/ui/mouse.min.js?ver=1.11.4"></script>
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-includes/js/jquery/ui/slider.min.js?ver=1.11.4"></script>
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-includes/js/jquery/ui/datepicker.min.js?ver=1.11.4"></script>
    <script type="text/javascript">
        jQuery(document).ready(function (jQuery) { jQuery.datepicker.setDefaults({ "closeText": "Close", "currentText": "Today", "monthNames": ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"], "monthNamesShort": ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"], "nextText": "Next", "prevText": "Previous", "dayNames": ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"], "dayNamesShort": ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"], "dayNamesMin": ["S", "M", "T", "W", "T", "F", "S"], "dateFormat": "MM d, yy", "firstDay": 1, "isRTL": false }); });
    </script>
    <script type="text/javascript">
        /* <![CDATA[ */
        var rentit_obj = { "theme_url": "http:\/\/rentit.wpmix.net\/wp-content\/themes\/rentit", "date_format": "MM\/DD\/YYYY H:mm", "lang": "en", "plugin_activate": "1", "plugin_error_message": "Error: Activate rentit plugin!", "themeurl": "http:\/\/rentit.wpmix.net\/wp-content\/themes\/rentit", "ajaxurl": "http:\/\/rentit.wpmix.net\/wp-admin\/admin-ajax.php", "lat": "34.800155", "longu": " 33.030800", "global_map_style": "[]", "zum": "9", "location": ["Airport", "Famagusta", "Kyrenia", "Larnaca", "Limassol", "Nicosia", "Paphos"], "price_group": ["Business Cars", "Economic Cars", "Luxury Cars", "Premium Cars"], "reserved_date": [], "GET": { "view": "grid" }, "currency": "$", "last_cat": "popular-cars", "rtl": "", "currency_pos": "left" };
        /* ]]> */
    </script>
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-content/themes/rentit/js/bootstrap/js/bootstrap.js?ver=1"></script>
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-content/themes/rentit/js/bootstrap-select/js/bootstrap-select.min.js?ver=1"></script>
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-content/themes/rentit/js/superfish/js/superfish.min.js?ver=1"></script>
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-content/themes/rentit/js/prettyphoto/js/jquery.prettyPhoto.js?ver=1"></script>
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-content/themes/rentit/js/owl-carousel2/owl.carousel.min.js?ver=1"></script>
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-content/themes/rentit/js/jquery.sticky.min.js?ver=1"></script>
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-content/themes/rentit/js/jquery.easing.min.js?ver=1"></script>
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-content/themes/rentit/js/jquery.smoothscroll.min.js?ver=1"></script>
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-content/themes/rentit/js/swiper/js/swiper.jquery.min.js?ver=1"></script>
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-content/themes/rentit/js/datetimepicker/js/moment-with-locales.min.js?ver=1"></script>
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-content/themes/rentit/js/datetimepicker/js/bootstrap-datetimepicker.min.js?ver=1"></script>
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-content/themes/rentit/js/theme-ajax-mail.js?ver=1"></script>
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-content/themes/rentit/js/theme.js?ver=1"></script>
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-content/themes/rentit/js/main.js?ver=1"></script>
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-content/themes/rentit/js/clustern.js?ver=1"></script>
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-content/themes/rentit/js/map_init.js?ver=1"></script>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCsbzuJDUEOoq-jS1HO-LUXW4qo0gW9FNs&amp;libraries=places&amp;callback=initialize_map&amp;ver=3"></script>
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-content/themes/rentit/js/bootstrap-typeahead.js?ver=1"></script>
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-content/themes/rentit/js/countdown/jquery.plugin.min.js?ver=1"></script>
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-content/themes/rentit/js/countdown/jquery.countdown.min.js?ver=1"></script>
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-content/themes/rentit/js/jquery.isotope.min.js?ver=1"></script>
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-includes/js/wp-embed.min.js?ver=4.9.2"></script>
    <script type="text/javascript" src="http://rentit.wpmix.net/wp-content/plugins/js_composer/assets/js/dist/js_composer_front.min.js?ver=5.4.4"></script>


</body>
