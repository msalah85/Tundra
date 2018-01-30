<%@ Page Language="C#" MasterPageFile="~/SiteCarPart.master" AutoEventWireup="true" CodeFile="CarPartsDetails.aspx.cs" Inherits="CarPartsDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <br />
    <br />
  
    <section  class=" dark rtl">
        <div class="container">
        
            <div class="row">
                
                <div class="col-md-12 wow fadeInRight" data-wow-offset="200" data-wow-delay="200ms">
                    <h4>تفاصيل قطعة الغيار التى تم إختيارها </h4>
                  
                    <div class="col-md-12 content car-listing" id="content">
                      
                        
                      
                            
                          <div class="thumbnail no-border no-padding thumbnail-car-card clearfix">
                            <div class="media">
                              <img src='../Public/image/carParts/_thumb/<%=parts[0].ImageUrl %>' />
                              
                            </div>
                            <div class="caption">
                           <div class="row">
                                <div class="col-md-6" >
                                  <h5 class="caption-title-sub"> نوع قطعه الغيار  : <%=parts[0].CarPartType %> </h5>
                                <h5 class="caption-title-sub">وصف : <%=parts[0].Description %></h5>
                                 
                             </div>
                             
                               
                                    <div class="col-md-6" >
                                <h5 class="caption-title-sub"> السعر : <%=parts[0].Price %> </h5>
                                <h5 class="caption-title-sub"> السنة : <%=parts[0].Year %> </h5>
                                <div class="caption-title-sub">موديل : <%=parts[0].ModelNameAr %>  -- <%=parts[0].ModelNameEn %></div>
                                <div class="caption-title-sub">المصنع : <%=parts[0].MarkerNameAr %> -- <%=parts[0].MarkerNameEn %></div>
                                </div>
                                  </div>    
                            </div>
                        </div>  
                            
                        <!-- /Pagination -->

                    </div>


            </div>
        </div>
                 </div>
    </section>
      <br />
 </asp:Content> 