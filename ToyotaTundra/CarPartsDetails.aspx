<%@ Page Language="C#" MasterPageFile="~/SiteCarPart.master" AutoEventWireup="true" CodeFile="CarPartsDetails.aspx.cs" Inherits="CarPartsDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <section class="page-section breadcrumbs text-center">
        <div class="container">
            <div class="page-header">
                <h2><%=part.MarkerNameEn %>  <%=part.ModelNameEn %> -  <%=part.Year %>
                    <%=part.CarPartType %></h2>
            </div>
            <ul class="breadcrumb">
                <li><a href="/">الرئيسية</a></li>
                <li><a href="/Carpart.aspx">قطع الغيار</a></li>
                <li class="active">تفاصيل القطعه</li>
            </ul>
        </div>
    </section>
    <section class="page-section sub-page">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-5 col-sm-7">
                    <ul class="list-group">
                        <li class="list-group-item">
                            <span class="inf">التصنيف </span><b style="float: left;"><%=part.CarPartType %></b>
                        </li>
                        <li class="list-group-item">
                            <span class="inf">نوع السيارة </span><b style="float: left;"><%=part.MarkerNameEn %></b>
                        </li>
                        <li class="list-group-item">
                            <span class="inf">موديل السيارة  </span><b style="float: left;"><%=part.ModelNameEn %></b>
                        </li>
                        <li class="list-group-item">
                            <span class="inf">سنة الصنع </span><b style="float: left;"><%=part.Year %></b>
                        </li>
                        <li class="list-group-item">
                            <span class="inf">السعر </span><b style="float: left;">$<%=Convert.ToInt32(part.Price) %> </b>
                        </li>
                        <li class="list-group-item">
                            <span class="inf">الوصف </span><b style="float: left;"></b>
                        </li>
                        <li class="list-group-item" style="align-items: center">
                            <span class="inf"></span><b><%=part.Description %></b>
                        </li>
                        <li class="list-group-item" style="text-align: center">
                            <a class="btn btn-theme" href="#contact-us">اطلب القطعة الآن</a>
                        </li>
                    </ul>
                </div>
                <div class="col-lg-8 col-md-7 col-sm-12 project-media">
                    <div class="media" style="width: 100%; height: 418px">
                        <div id="carousel-example-21" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-21" data-slide-to="0" class="active"></li>
                                <%for (int i = 1; i < part.ImagesUrl.Count(); i++)
                                    {%>
                                <li data-target="#carousel-example-21" data-slide-to="1" class=""></li>
                                <%} %>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <a class="media-link" href="/public/image/carparts/<%=part.ImagesUrl %>" rel="prettyPhoto[car21]">
                                        <img alt="<%=part.MarkerNameEn %>" src="/public/image/carparts/<%=part.ImagesUrl %>" data-holder-rendered="true" style="width: 100%; height: 417px !important;"></a>
                                </div>
                                <%for (int i = 1; i < part.ImagesUrl.Count(); i++)
                                    {%>
                                <div class="item">
                                    <a class="media-link" href="/public/image/carparts/<%=part.ImagesUrl[i] %>" rel="prettyPhoto[car21]">
                                        <img alt="<%=part.MarkerNameEn %>" src="/public/image/carparts/<%=part.ImagesUrl[i] %>" data-holder-rendered="true" style="width: 100%; height: 417px !important;"></a>
                                </div>
                                <%} %>
                            </div>
                            <a class="left carousel-control" href="#carousel-example-21" role="button" data-slide="prev"><span class="glyphicon glyphicon-chevron-left" aria-hidden="true" style="height: 417px;"></span>
                                <span class="sr-only">السابق</span></a><a style="height: 417px;" class="right carousel-control" href="#carousel-example-21" role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                    <span class="sr-only">التالى</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
