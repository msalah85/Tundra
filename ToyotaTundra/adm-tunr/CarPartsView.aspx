<%@ Page Title=".:: Add/Edit Car Part Information ::." Language="C#" MasterPageFile="Admin.master"
    AutoEventWireup="true" CodeFile="CarPartsView.aspx.cs" Inherits="adm_tunr_CarPartsView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<style type="text/css">
        .PagerNormal {
            font: 9pt Verdana;
            color: #0066CF;
            border: solid 1px #778899;
            padding: 4px 8px;
            text-decoration: none;

        }
        .carpart tr:nth-child(odd){
            background-color:#eee;
            padding: 14px;
            margin: 10px;
            font-size:16px;
            font-weight:600;
        }
        .carpart tr:nth-child(odd):hover{
            background-color:#fff;

        }
         .carpart tr:nth-child(even){
            background-color:#fff;
        }
            .carpart tr:nth-child(even):hover {
                        background-color:#eee;
                                    font-weight:600;


            }


        .PagerCurrent {
            font: 9pt Verdana;
            border: solid 1px #778899;
            padding: 4px 8px;
            background-color: #FFD700;
        }

        #DataPagerCarParts {
            margin-top: 5px;
            text-align: center;
            color: #ffd800;
        }
        .ima{
                width: 276px;
        }
        .act{
                width: 10px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellspacing="0" cellpadding="0" border="0" width="98%">
        <tbody>
            <tr>
                <td class="innerContentHead">Car Parts >>  Car Parts List
                </td>
            </tr>
        </tbody>
    </table>
    <br />
    <asp:Label ID="Label1" runat="server" ForeColor="red"></asp:Label>
    <asp:ValidationSummary ID="vldSummary" runat="server" ValidationGroup="s" ShowMessageBox="true"
        ShowSummary="false" HeaderText="Please review all required (*) fields below." />
    <br />
  
    <table width="98%" cellspacing="0" cellpadding="8" border="0" class="Grid">
                             <tr valign="top" class="Grid_alertnative">
                                 <td>
                               Car Part Type / Model / Maker / Years
                            </td>
                            <td> Car Part Type</td>
                            <td width="250" >
                                
                            </td>
                        </tr>
                        <tr align="center" valign="top" class="Grid_alertnative">

                            <td>
                                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                            </td>
                              <td>
                    <asp:DropDownList ID="ddlcarPartType" runat="server" AutoPostBack="false" >
                    </asp:DropDownList>
                </td>
                                <td width="250">
                                <asp:Button ID="btnSearch" ValidationGroup="s" CssClass="g-btn" Width="100px" runat="server"
                                    Text="Filter" OnClick="btnSearch_Click" />
                            </td>
                        </tr>
                    </table>
                          <asp:Label ID="Label2" runat="server" ForeColor="red"></asp:Label>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="s" ShowMessageBox="true"
        ShowSummary="false" HeaderText="Please review all required (*) fields below." />
    <br />
    <!-- basic info -->
  
    <asp:GridView ID="lvCarParts" runat="server" AutoGenerateColumns="False" 
         Width="98%" CssClass="Grid" onrowcommand="gvModels_RowCommand" 
         onpageindexchanging="gvModels_PageIndexChanging" 
         onrowdeleting="gvModels_RowDeleting" AllowPaging="True" >
        <HeaderStyle CssClass="GridHead" />
        <AlternatingRowStyle CssClass="Grid_alertnative" />
        
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>  
                    <br />                  
                     <a href='<%# "CarPartsImages.aspx?masterId=" + Eval("CarPartId") %>'><img id="Img1" border="0" width="75" alt="Click to view car details" runat="server"
                         src='<%# "~/Public/image/carParts/_thumb/" + (Eval("ImageUrl") != null  ? Eval("ImageUrl") : "no_photo.jpg") %>' />   
                    </a>               
                </ItemTemplate>
                <HeaderTemplate>                    
                      
                </HeaderTemplate>

            </asp:TemplateField> 
             <asp:TemplateField>
                <ItemTemplate>   
                                     
                       <%# Eval("IsActive")%>                  
                </ItemTemplate>
                <HeaderTemplate>                    
                        Active 
                </HeaderTemplate>
            </asp:TemplateField>
               <asp:TemplateField>
                <ItemTemplate>                    
                        <%# Eval("CarPartType")%>                  
                </ItemTemplate>
                <HeaderTemplate>                    
                        Car Part Type
                </HeaderTemplate>
            </asp:TemplateField>  
            <asp:TemplateField>
                <ItemTemplate>   
                                     
                       <%# Eval("MarkerNameEn")%>                  
                </ItemTemplate>
                <HeaderTemplate>                    
                        Maker Name 
                </HeaderTemplate>
            </asp:TemplateField> 
             <asp:TemplateField>
                <ItemTemplate>                    
                        <%# Eval("ModelNameEn")%>                  
                </ItemTemplate>
                <HeaderTemplate>                    
                        Model Name 
                </HeaderTemplate>
            </asp:TemplateField> 
              <asp:TemplateField>
                <ItemTemplate>                    
                        <%# Eval("Year")%>                  
                </ItemTemplate>
                <HeaderTemplate>                    
                        Model Name 
                </HeaderTemplate>
            </asp:TemplateField> 
            <asp:TemplateField ItemStyle-Width="40">
                <ItemTemplate>                    
                        <asp:ImageButton ID="lbEdit"
                         CommandArgument='<%# Eval("CarPartId") %>' CssClass="showPeriodMsgPopup"  Width="23" BorderStyle="None"
                         CommandName="EditItem" runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/admin/images/document_edit.png" />
                         
                </ItemTemplate>
                <HeaderTemplate>
                    Edit    
                </HeaderTemplate>
            </asp:TemplateField>                      
            <asp:TemplateField HeaderText="Delete" ItemStyle-Width="40">
                 <ItemTemplate>                  
                     <asp:ImageButton ID="LinkButton1"
                         CommandArgument='<%# Eval("CarPartId") %>'  Width="23" BorderStyle="None" ToolTip="Delete"
                         CommandName="Delete" OnClientClick="return confirm('Are you sure you want to delete this event?');"
                          runat="server" ImageUrl="~/App_Themes/admin/images/delete.png" />
                 </ItemTemplate>
               </asp:TemplateField>     
        </Columns>
        <PagerSettings Mode="NumericFirstLast" />
    </asp:GridView>
    <!-- end basic info -->
    <br />
    <asp:HiddenField ID="hfID" runat="server" />
    <asp:HiddenField ID="hfVisitors" Value="0" runat="server" />
    <asp:HiddenField ID="hfTransferStatus" Value="1" runat="server" />
    <asp:HiddenField ID="hfMain_Picture" runat="server" />
    <style type="text/css">
        select {
            width: 256px !important;
        }
    </style>
    <script type="text/javascript">
        function pageLoad(sender, e) {

        }
    </script>
</asp:Content>
