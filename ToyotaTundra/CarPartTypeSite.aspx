<%@ Page Title="شركة" Language="C#" MasterPageFile="~/SiteCarPart.master" AutoEventWireup="true" CodeFile="CarPartTypeSite.aspx.cs" Inherits="CarPartTypeSite" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
<section class="page-section with-sidebar sub-page">

                    <!-- CONTENT -->
                    <div class="col-md-9 content car-listing" id="content">
                      
                        <%foreach (var item in parts)
                            {%>
                          <div class="thumbnail no-border no-padding thumbnail-car-card clearfix">
                            <div class="media">
                                <img src='../Public/image/carParts/_thumb/<%=item.ImageUrl %>' />
                              
                            </div>
                            <div class="caption">
                               
                                <h4 class="caption-title">   السعر : <% = item.Price %></h4>
                                <h5 class="caption-title-sub"> السنه   : <% = item.Year %> </h5>
                                <div class="caption-text"><% = item.Description %></div>
                                <table class="table">
                                    <tbody><tr>
                                        <td><i class="fa fa-car"></i> <p><% = item.MarkerNameAr %></p></td>
                                        <td><i class="fa fa-dashboard"></i> <p><% = item.MarkerNameEn %></p></td>
                                        <td><i class="fa fa-cog"></i> <p><% = item.ModelNameAr %></p></td>
                                        <td><i class="fa fa-road"></i> <p><% = item.ModelNameEn %></p></td>
                                       
                                    </tr>
                                </tbody></table>
                            </div>
                        </div>  
                            <%} %>
                        <!-- /Pagination -->

                    </div>

          
        </section>
    </asp:Content>
