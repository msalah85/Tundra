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
                              <div class="media">
                                  <div id="carousel-example-21" class="carousel slide" data-ride="carousel">  
                                      <ol class="carousel-indicators">
                                          <li data-target="#carousel-example-21" data-slide-to="0" class="active"></li>
                                          <%for (int i = 1; i < parts[0].ImagesUrl.Count(); i++)
                                              {%>
                                          <li data-target="#carousel-example-21" data-slide-to="1" class=""></li>
                                          <%} %>
                                      </ol>
                                      <div class="carousel-inner" role="listbox">
                                           <div class="item active">
                                                <a class="media-link" href="/public/image/carparts/<%=parts[0].ImagesUrl[0] %>" rel="prettyPhoto[car21]"> 
                                                     <img alt="<%=parts[0].MarkerNameEn %>" src="/public/image/carparts/<%=parts[0].ImagesUrl[0] %>" data-holder-rendered="true"></a>
                                            </div>
                                         <%for(int i=1; i< parts[0].ImagesUrl.Count();i++ )
                                             {%>
                                        
                                            <div class="item">
                                                <a class="media-link" href="/public/image/carparts/<%=parts[0].ImagesUrl[i] %>" rel="prettyPhoto[car21]"> 
                                                     <img alt="<%=parts[0].MarkerNameEn %>" src="/public/image/carparts/<%=parts[0].ImagesUrl[i] %>" data-holder-rendered="true"></a>
                                            </div>
                                        
                                      <%} %>
                                          </div>
                                      <a class="left carousel-control" href="#carousel-example-21" role="button" data-slide="prev"><span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                          <span class="sr-only">السابق</span></a><a class="right carousel-control" href="#carousel-example-21" role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                              <span class="sr-only">التالى</span></a>  

                                  </div></div>
                            </div>
                            <div class="caption">
                           <div class="row">
                                <div class="col-md-6" >
                                  <h5 class="caption-title-sub"> نوع قطعه الغيار  : <%=parts[0].CarPartType %> </h5>
                                <h5 class="caption-title-sub">وصف : <%=parts[0].Description %></h5>
                                 <td class="buttons"><a class="btn btn-theme" href="#contact-us">اطلب القطعة الآن</a></td>
                             </div>
                             
                               
                                    <div class="col-md-6" >
                                <h5 class="caption-title-sub"> السعر   : <%=Convert.ToInt32(parts[0].Price) %> </h5>
                                <h5 class="caption-title-sub"> السنة   : <%=parts[0].Year %> </h5>
                                <div class="caption-title-sub">الموديل   : <%=parts[0].ModelNameEn %></div>
                                <div class="caption-title-sub">المصنع    :<%=parts[0].MarkerNameEn %></div>
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