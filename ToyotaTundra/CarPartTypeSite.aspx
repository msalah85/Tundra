<%@ Page Title="شركة" Language="C#"  AutoEventWireup="true" CodeFile="CarPartTypeSite.aspx.cs" Inherits="CarPartTypeSite" %>

  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="~/apple-touch-icon.png">
    <link href="//fonts.googleapis.com/earlyaccess/droidarabickufi.css" rel="stylesheet" />
    <link href="//fonts.googleapis.com/earlyaccess/droidarabicnaskh.css" rel="stylesheet" />
    <link href="/Content/tundra.min.css" rel="stylesheet" />
    <script src="Scripts/modernizr-2.6.2.min.js"></script>
    <form runat="server">
        <br /><br />
<table width="70%" cellspacing="0" cellpadding="8" border="0" class="Grid">
                             <tr valign="top" class="Grid_alertnative">
                     
                        </tr>
                        <tr align="center" valign="top" class="Grid_alertnative">

                            <td>
                                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                            </td>
                              <td>
                </td>
                                <td width="250">
                                <asp:Button ID="btnSearch" ValidationGroup="s" CssClass="g-btn" Width="100px" runat="server"
                                    Text="بحث" OnClick="btnSearch_Click" />
                            </td>
                        </tr>
                    </table>
        </form>
<section class="page-section with-sidebar sub-page">

                    <!-- CONTENT -->
                    <div class="col-md-12 content car-listing" id="content">
                      <% if (parts.Count() > 0) %>
                        <%{ %>
                        <%foreach (var item in parts)
                            {%>
                          <div class="thumbnail no-border no-padding thumbnail-car-card clearfix">
                            <div class="media">
                                <img src='../Public/image/carParts/_thumb/<%=item.ImageUrl %>' />
                              
                            </div>
                            <div class="caption">
                               
                                <h4 class="caption-title">   السعر : <% = item.Price %></h4>
                                <h5 class="caption-title-sub"> السنه   : <% = item.Year %> </h5>
                                <h5 class="caption-title-sub"> نوع الغيار   : <% = item.CarPartType %> </h5>
                                <div class="caption-text"><% = item.Description %></div>
                                <table class="table">
                                    <tbody><tr>
                                        <td><i class="fa fa-car"></i> <p><% = item.MarkerNameAr %></p></td>
                                        <td><i class="fa fa-dashboard"></i> <p><% = item.MarkerNameEn %></p></td>
                                        <td><i class="fa fa-cog"></i> <p><% = item.ModelNameAr %></p></td>
                                        <td><i class="fa fa-road"></i> <p><% = item.ModelNameEn %></p></td>
                                        <td class="buttons"><a class="btn btn-theme" href="/CarPartsDetails.aspx?ID=<%= item.CarPartId%>">تفاصيل </a></td>
                                    </tr>
                                </tbody></table>
                            </div>
                        </div>  
                            <%}
        } %>
                        <%else %>
                         <%{ %>  
                        <div class="thumbnail no-border no-padding thumbnail-car-card clearfix">
                        <div class="caption"> <h4 class="caption-title"> لا توجد بيانات متطابقة </h4>
                            </div></div><%} %>
                           
                        <!-- /Pagination -->

                    </div>

          
        </section>