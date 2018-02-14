<%@ Page Language="C#" MasterPageFile="~/SiteCarPart.master" AutoEventWireup="true" CodeFile="CarPartsDetails.aspx.cs" Inherits="CarPartsDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <br />
    <br />
                         <a style="    margin-left: 240px" class="btn btn-info pull-left hidden-print go-home" href="CarParts.aspx"> <i class="fa fa-chevron-left" style="color:#fff;">  الرجوع لقطع الغيار  </i></a>     
                  <h2 class="section-title wow fadeInUp" data-wow-offset="70" data-wow-delay="500ms">
              
                <span><%=parts[0].MarkerNameEn %>  <%=parts[0].ModelNameEn %>  <%=parts[0].CarPartType %>  <%=parts[0].Year %></span>
                      <br />
            </h2>   
   
    <section  class=" dark rtl">
        <div class="container">
        
                
                <div class="col-md-12 wow fadeInRight" data-wow-offset="200" data-wow-delay="200ms">
                    
                  
                    <div class="col-md-12 content car-listing" id="content">                 
                            
                          <div class="thumbnail no-border no-padding thumbnail-car-card clearfix">
                            <div class="media col-lg-8">
                              <div class="media" style="width:100%; height: 418px">
                                  <div id="carousel-example-21" class="carousel slide" data-ride="carousel">  
                                      <ol class="carousel-indicators">
                                          <li data-target="#carousel-example-21" data-slide-to="0" class="active"  ></li>
                                          <%for (int i = 1; i < parts[0].ImagesUrl.Count(); i++)
                                              {%>
                                          <li data-target="#carousel-example-21" data-slide-to="1" class="" ></li>
                                          <%} %>
                                      </ol>
                                      <div class="carousel-inner" role="listbox">
                                           <div class="item active">
                                                <a class="media-link" href="/public/image/carparts/<%=parts[0].ImagesUrl[0] %>" rel="prettyPhoto[car21]"> 
                                                     <img alt="<%=parts[0].MarkerNameEn %>" src="/public/image/carparts/<%=parts[0].ImagesUrl[0] %>" data-holder-rendered="true" style="width:100% ; height: 417px !important;"></a>
                                            </div>
                                         <%for(int i=1; i< parts[0].ImagesUrl.Count();i++ )
                                             {%>
                                        
                                            <div class="item">
                                                <a class="media-link" href="/public/image/carparts/<%=parts[0].ImagesUrl[i] %>" rel="prettyPhoto[car21]"> 
                                                     <img alt="<%=parts[0].MarkerNameEn %>" src="/public/image/carparts/<%=parts[0].ImagesUrl[i] %>" data-holder-rendered="true" style="width:100%; height: 417px !important;"></a>
                                            </div>
                                        
                                      <%} %>
                                          </div>
                                      <a class="left carousel-control" href="#carousel-example-21" role="button" data-slide="prev"><span class="glyphicon glyphicon-chevron-left" aria-hidden="true" style="    height: 417px;"></span>
                                          <span class="sr-only">السابق</span></a><a style="    height: 417px;" class="right carousel-control" href="#carousel-example-21" role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                              <span class="sr-only">التالى</span></a>  

                                  </div></div>
                            </div>
                          <div class="col-md-4 col-sm-12 col-xs-12" style="padding:0;">
                              <div class="sidebar-widget widget">
                                  <ul class="list-group">
                                      <li class="list-group-item">
                                          <span class="inf">نوع قطعة الغيار </span><b style="float:left;" id="ContentMain__id" class="_id"><%=parts[0].CarPartType %></b>
                                      </li>
                                      <li class="list-group-item">
                                          <span class="inf">نوع السيارة </span><b style="float:left;" id="ContentMain__id" class="_id"><%=parts[0].MarkerNameEn %></b>
                                      </li>
                                      <li class="list-group-item">
                                          <span class="inf">موديل السيارة  </span><b style="float:left;" id="ContentMain__id" class="_id"><%=parts[0].ModelNameEn %></b>
                                      </li>
                                      <li class="list-group-item">
                                          <span class="inf">سنة الصنع </span><b style="float:left;" id="ContentMain__id" class="_id"><%=parts[0].Year %></b>
                                      </li>

                                      <li class="list-group-item">
                                          <span class="inf">السعر </span><b style="float:left;" id="ContentMain__id" class="_id"> $<%=Convert.ToInt32(parts[0].Price) %> </b>  
                                      </li>
                                      <li class="list-group-item">
                                          <span class="inf" >الوصف </span><b style="float:left;" id="ContentMain__id" class="_id">  </b>
                                      </li>
                                      <li class="list-group-item" style="align-items:center">
                                          <span class="inf"> </span><b><%=parts[0].Description %></b>
                                      </li>
                                      <li class="list-group-item">
                                          <a style="text-align:center" class="btn btn-theme" href="#contact-us">اطلب القطعة الآن</a>
                                      </li>
                                      </ul>
                                      </div></div>

                          </div>
                        </div>  
                            
                        <!-- /Pagination -->

                    </div>


            </div>
    </section>
      <br />
 </asp:Content> 