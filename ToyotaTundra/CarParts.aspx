<%@ Page Title="شركة" Language="C#"  AutoEventWireup="true" CodeFile="CarParts.aspx.cs" Inherits="CarParts" %>

  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="~/apple-touch-icon.png">
    <link href="//fonts.googleapis.com/earlyaccess/droidarabickufi.css" rel="stylesheet" />
    <link href="//fonts.googleapis.com/earlyaccess/droidarabicnaskh.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <link href="/Content/tundra.min.css" rel="stylesheet" />
    <script src="Scripts/modernizr-2.6.2.min.js"></script>
<style>
    .for-details{
             width: 26%;
    height: 399px;
    z-index: 56;
    float: right;
    }
    .car-listing{
        width:100%;
    }
    .for-details .text-he{
            height: 34px;
            margin-bottom: 10px;
    margin-top: 10px;
    }
    .for-ser{
            height: 34px;
    }
    .for-details .form-group-3{
            margin: 12px;
    }
</style>
   <div class="col-md-3 for-details text-right">
                            <form runat="server">
                         <div class="form-group">
                  <label class="text-right col-lg-12" for="exampleSelect1">نوع السيارة </label>
              <asp:DropDownList ID="ddlMarkers" runat="server" AutoPostBack="True"  class="col-md-12" OnSelectedIndexChanged="ddlMarkers_SelectedIndexChanged">
               </asp:DropDownList>
            
            </div> 
<div class="form-group">
                  <label class="text-right col-lg-12" for="exampleSelect1">موديل السيارة </label>
              <asp:DropDownList ID="ddlModels" runat="server" class="col-md-12">
               </asp:DropDownList>
            
            </div> 
<div class="form-group">
                  <label class="text-right col-lg-12" for="exampleSelect1">نوع قطعة الغيار</label>
              <asp:DropDownList ID="ddlcarPartType" runat="server" class="col-md-12" placeholder="بحث...">
               </asp:DropDownList>
            
            </div> 
          <div class="form-group">
                  <label class="text-right col-lg-12" for="exampleSelect1">سنة الصنع </label>
             
               <asp:DropDownList ID="ddlToYears" runat="server" class="col-md-6">
               </asp:DropDownList>
               <asp:DropDownList ID="ddlYears" runat="server" class="col-md-6">
               </asp:DropDownList>
            </div>                      
<div class="form-group">
                      <label class="text-right col-lg-12" for="exampleSelect1">السعر </label>
     <asp:TextBox ID="fromPrice" runat="server" class="form-control text-he col-md-6"  placeholder="من "></asp:TextBox>
<asp:TextBox ID="endPrice" runat="server" type="text" class="form-control text-he col-md-6" placeholder="إلى"></asp:TextBox>  
</div>

<div class="input-group">
      <asp:TextBox ID="txtName" runat="server" class="form-control for-ser text-right" placeholder="بحث..."></asp:TextBox>
      <span class="input-group-btn">
        <asp:Button class="btn btn-primary" type="button" Text="! بحث " OnClick="btnSearch_Click" runat="server"/>
      </span>
    </div>
                                </form>

                        </div>
<section class="page-section with-sidebar sub-page">
     
                        
                    <!-- CONTENT -->
                    <div class="col-md-12 content car-listing" id="content">
                    
                      <% if (parts.Count() > 0) %>
                        <%{ %>
                        <%foreach (var item in parts)
                            {%>
                          <div class="thumbnail no-border no-padding thumbnail-car-card clearfix">
                            <div class="media">
                                <!-- we should check if it has aphoto from db ok else set a default one.-->
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
<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>