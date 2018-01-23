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
                <td class="innerContentHead">Car Parts >>  Car Parts Lisr
                </td>
            </tr>
        </tbody>
    </table>
    <br />
    <asp:Label ID="Label1" runat="server" ForeColor="red"></asp:Label>
    <asp:ValidationSummary ID="vldSummary" runat="server" ValidationGroup="s" ShowMessageBox="true"
        ShowSummary="false" HeaderText="Please review all required (*) fields below." />
    <br />
    <!-- basic info -->
    <h6 class="div-right margin-right" style="padding: 0; margin: 0;">All fields (<font color="red">*</font>) mandatory.
    </h6>
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
    <asp:DataPager runat="server" ID="DataPagerCarParts" PagedControlID="lvCarParts">
                            <Fields>
                                <asp:NextPreviousPagerField ShowNextPageButton="False" FirstPageText="&#171;" />
                                <asp:NumericPagerField
                                    ButtonCount="10"
                                    CurrentPageLabelCssClass="PagerCurrent"
                                    NextPreviousButtonCssClass="PagerNormal"
                                    NumericButtonCssClass="PagerNormal"
                                    NextPageText=">>"
                                    PreviousPageText="<<" />
                                <asp:NextPreviousPagerField ShowPreviousPageButton="False" />
                            </Fields>
                        </asp:DataPager>
                        <table cellspacing="0" cellpadding="0" bordercolor="#eee" border="1" bgcolor="#f8f8f8"
                                    width="99%" style="border-collapse: collapse;">
                                    <tbody style="text-align: left;">
                                        <tr>
                                            <td valign="middle">
                                                <table cellspacing="2" cellpadding="2" bordercolor="#eee" border="1"
                                                    width="99%" style="border-collapse: collapse;" class="carpart">
                                                    <tbody>
                                                        <br />
                                                        <tr>
                                                            <td class="ima"></td>
                                                            <td>Maker Name</td>
                                                            <td>Model Name</td>
                                                            <td>Car Part Type</td>
                                                            <td>Year</td>
                                                            <td>
                                                                Actions
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                        <asp:ListView ID="lvCarParts" runat="server" ViewStateMode="Disabled"
                            OnItemCommand="CarsListView_OnItemCommand" OnPagePropertiesChanging="lvCarParts_PagePropertiesChanging">
                           
                            <ItemTemplate>
                                <table cellspacing="0" cellpadding="0" bordercolor="#eee" border="1" bgcolor="#f8f8f8"
                                    width="99%" style="border-collapse: collapse;">
                                    <tbody style="text-align: left;">
                                        <tr>
                                            <td valign="middle">
                                                <table cellspacing="2" cellpadding="2" bordercolor="#eee" border="1"
                                                    width="99%" style="border-collapse: collapse;" class="carpart">
                                                    <tbody>
                                                        <br />
                                                        <tr>
                                                            <td class="ima"><a id="A1" runat="server" title="Manage car pictures" href='<%# "CarPartsImages.aspx?categoryType=cars&masterId=" + Eval("CarPartId") %>'>
                                                                <img id="Img1" border="0" width="150" alt="Click to view car details" runat="server"
                                                                    src='<%# "~/Public/image/carParts/_thumb/" + (Eval("ImageUrl") != null  ? Eval("ImageUrl") : "no_photo.jpg") %>' /></a></td>
                                                            <td><%# Eval("MarkerNameEn")%></td>
                                                            <td><%# Eval("ModelNameEn")%></td>
                                                            <td><%# Eval("CarPartType")%></td>
                                                            <td><%# Eval("Year")%></td>
                                                            <td class="act">
                                                                <!-- controls only for emp. who add -->
                                                                <div id="Div1" class="div-right">
                                                                    <a class="ajaxcolorbox" href="CarPartAdd.aspx?id=<%# Eval("CarPartId") %>">Edit</a>
                                                                    &nbsp;|&nbsp;&nbsp;|&nbsp;
                                                                    <asp:LinkButton
                                                                        OnClientClick="return DeleteConfirmation();" ID="LinkButton2" CommandArgument='<%# Eval("CarPartId") %>'
                                                                        CommandName="DeleteItem" runat="server">Delete</asp:LinkButton>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </ItemTemplate>
                            <ItemSeparatorTemplate>
                                <hr />
                            </ItemSeparatorTemplate>
                        </asp:ListView>

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
