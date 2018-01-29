<%@ Page Language="C#" MasterPageFile="~/SiteCarPart.master" AutoEventWireup="true" CodeFile="CarPartsDetails.aspx.cs" Inherits="CarPartsDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <br />
    <br />
    <br />
    <section  class=" dark rtl">
        <div class="container">
        
            <div class="row">
                
                <div class="col-md-9 wow fadeInRight" data-wow-offset="200" data-wow-delay="200ms">
                    <p>تفاصيل قطعة الغيار التى تم إختيارها </p>
                    <ul class="media-list contact-list">
                        <li class="media">
                            <div class="media-body"> <img src='../Public/image/carParts/_thumb/<%=parts[0].ImageUrl %>' /> </div>
                        </li>
                        <li class="media">
                            <div class="media-body">السعر : <%=parts[0].Price %> </div>
                        </li>
                        <li class="media"> 
                            <div class="media-body">السنة : <%=parts[0].Year %></div>
                        </li>
                        <li class="media">
                            <div class="media-body">موديل : <%=parts[0].ModelNameAr %>  -- <%=parts[0].ModelNameEn %></div>
                        </li>
                        <li class="media">
                            <div class="media-body">المصنع : <%=parts[0].MarkerNameAr %> -- <%=parts[0].MarkerNameEn %></div>
                        </li>
                          <li class="media">
                            <div class="media-body">نوع قطعه الغيار  : <%=parts[0].CarPartType %></div>
                        </li>
                        <li class="media">
                            <div class="media-body">وصف : <%=parts[0].Description %></div>
                        </li>
                       
                    </ul>
                </div>
            </div>
        </div>
    </section>
 </asp:Content> 