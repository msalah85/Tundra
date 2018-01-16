<%@ Page Title=".:: View Cars List ::." Language="C#" MasterPageFile="Admin.master"
    AutoEventWireup="true" CodeFile="CarsView.aspx.cs" Inherits="admin_elaf_CarsView"
    ViewStateMode="Disabled" %>

<%@ MasterType VirtualPath="Admin.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript" language="javascript">
        function DeleteConfirmation() {
            if (confirm("Are you sure! you want to delete the selected item?") == true)
                return true;
            else
                return false;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellspacing="0" cellpadding="0" border="0" width="950px">
        <tbody>
            <!-- Header -->
            <tr>
                <td class="innerContentHead">Cars >> View list<div class="div-right margin-right">
                    <a runat="server" href="CarsAddEdit.aspx" title="Add new">
                        <img runat="server" src="~/App_Themes/admin/images/add-new.png" alt="Add new" /></a>
                </div>
                </td>
            </tr>
            <!-- Seperator -->
            <tr>
                <td style="height: 20px;">
                    <asp:Label ID="lblError" CssClass="red-txt" runat="server"></asp:Label>
                </td>
            </tr>
            <!-- ContentPlaceHolder -->
            <tr>
                <td class="innerPlaceHolder" style="padding-top: 10px;">
                    <!-- put content here -->
                    <!-- search box -->
                    <table width="98%" cellspacing="0" cellpadding="8" border="0" class="Grid">
                        <tr align="center" valign="top">
                            <td>Active
                            </td>
                            <td colspan="2">Car code / Maker / Model / Year
                            </td>
                        </tr>
                        <tr align="center" valign="top" class="Grid_alertnative">
                            <td>
                                <asp:RadioButtonList ID="rblActive" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Text="All" Value=""></asp:ListItem>
                                    <asp:ListItem Text="Active" Value="1" Selected="True"></asp:ListItem>
                                    <asp:ListItem Text="Not active" Value="0"></asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td>
                                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                            </td>
                            <td width="250">
                                <asp:Button ID="btnSearch" ValidationGroup="s" CssClass="g-btn" Width="100px" runat="server"
                                    Text="Filter" OnClick="btnSearch_Click" />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <!-- end search box -->
                    <center>
                        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" EnablePaging="True" SelectCountMethod="GetCarsCount"
                            SelectMethod="GetCars" TypeName="TundraMkCars.Data.CarsListToShow" EnableViewState="False">
                            <DeleteParameters>
                                <asp:Parameter Name="CarID" Type="Int64" />
                            </DeleteParameters>
                        </asp:ObjectDataSource>
                        <asp:ListView ID="lvCarsList" runat="server" DataSourceID="ObjectDataSource1" ViewStateMode="Disabled"
                            OnItemCommand="CarsListView_OnItemCommand" DataKeyNames="CarID">
                            <ItemTemplate>
                                <table cellspacing="0" cellpadding="0" bordercolor="#0f83cc" border="0" bgcolor="#f8f8f8"
                                    width="99%" style="border-collapse: collapse;">
                                    <tbody style="text-align: left;">
                                        <tr>
                                            <td width="130" valign="top">
                                                <a id="A1" runat="server" title="Manage car pictures" href='<%# "Images.aspx?categoryType=cars&masterId=" + Eval("CarID") %>'>
                                                    <img id="Img1" border="0" width="150" alt="Click to view car details" runat="server"
                                                        src='<%# "~/Public/image/cars/_thumb/" + (Eval("main_picture") != null  ? Eval("main_picture") : "no_photo.jpg") %>' /></a>
                                            </td>
                                            <td valign="middle">
                                                <table cellspacing="2" cellpadding="2" bordercolor="#ffffff" border="1" bgcolor="#f8f8f8"
                                                    width="99%" style="border-collapse: collapse;">
                                                    <tbody>
                                                        <tr>
                                                            <td width="180">
                                                                <a id="A2" runat="server" href='<%# "Images.aspx?categoryType=cars&masterId=" + Eval("CarID") %>'>Code:&nbsp;<%# Eval("car_code")%></a>
                                                            </td>
                                                            <td width="225">
                                                                <font size="2" color="#000000">Maker:&nbsp;<font size="2" color="#ff0000"><%# Eval("MarkerNameEn")%></font></font>
                                                            </td>
                                                            <td width="225">
                                                                <font size="2" color="#000000">Model:&nbsp;<font size="2" color="#ff0000"><%# Eval("TypeNameEn")%></font></font>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td width="180">
                                                                <font size="2" color="#000000">Exterior Color:&nbsp;<font size="2" color="#ff0000"><%# Eval("ExtColorEn")%></font></font>
                                                            </td>
                                                            <td width="225">
                                                                <font size="2" color="#000000">Chassis No:&nbsp;<font size="2" color="#ff0000"><%# Eval("chassis_no")%></font></font>
                                                            </td>
                                                            <td width="225">
                                                                <font size="2" color="#000000">Engine No:&nbsp;<font size="2" color="#ff0000"><%# Eval("engine_no")%></font></font>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td width="180">
                                                                <font size="2" color="#000000">Year:&nbsp;<font size="2" color="#ff0000"><%# Eval("YearNameEn")%></font></font>
                                                            </td>
                                                            <td width="225">
                                                                <font size="2" color="#000000">Purchase Price:&nbsp;<font size="2" color="green"><%# Eval("real_price")%></font></font>
                                                            </td>
                                                            <td width="225">
                                                                <font size="2" color="#000000">Sale Price:&nbsp;<font size="2" color="green"><%# string.Format("{0:F}",Eval("sale_price"))%></font></font>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right" colspan="3">
                                                                <!-- controls only for emp. who add -->
                                                                <div id="Div1" class="div-right">
                                                                    <font size="2" color="#000000">Date:&nbsp;<font size="2" color="#ff0000"><%# MinutesuaeConcrete.GetDateOnly(Eval("System_Add_Date"))%></font></font>
                                                                    &nbsp;|&nbsp;<a id="dsdspl" runat="server" href='<%# "car-" + Eval("CarID") + "/edit" %>'>Edit</a>&nbsp;|&nbsp;
                                                                    <a id="dsdsasdsdsd" runat="server" href='<%# "Images.aspx?masterId=" + Eval("CarID") + "&categoryType=cars" %>'>Upload Pictures</a><%--&nbsp;|&nbsp;<a href=''>Sale Car</a>--%>&nbsp;|&nbsp;<asp:LinkButton
                                                                        OnClientClick="return DeleteConfirmation();" ID="LinkButton1" CommandArgument='<%# Eval("CarID") %>'
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
                            <EmptyDataTemplate>
                                <div class="yellow-alert">
                                    &nbsp; There are no cars under this section... <a class="div-right" title="Back"
                                        href="javascript:history.back();">
                                        <img id="Img2" alt="Back" runat="server" src="~/App_Themes/site-ar/images/go-back.png" /></a>
                                </div>
                                <% this.ListDataPager.Visible = false; %>
                            </EmptyDataTemplate>
                        </asp:ListView>
                        <br clear="all" />
                        <div class="pagging">
                            <asp:DataPager runat="server" ID="ListDataPager" QueryStringField="page" PageSize="50"
                                PagedControlID="lvCarsList">
                                <Fields>
                                    <asp:TemplatePagerField>
                                        <PagerTemplate>
                                            <b>Pages
                                                <asp:Label runat="server" ID="CurrentPageLabel" Text="<%# Container.TotalRowCount> 0 ? (Container.StartRowIndex / Container.PageSize) + 1 : 0 %>" />
                                                to
                                                <asp:Label runat="server" ID="TotalPagesLabel" Text="<%# Math.Ceiling ((double)Container.TotalRowCount / Container.PageSize) %>" />
                                                (from cars
                                                <asp:Label runat="server" ID="TotalItemsLabel" Text="<%# Container.TotalRowCount%>" />
                                                )
                                                <br clear="all" />
                                            </b>
                                        </PagerTemplate>
                                    </asp:TemplatePagerField>
                                    <asp:NextPreviousPagerField ButtonType="Link" ButtonCssClass="paging-item" ShowFirstPageButton="true"
                                        ShowNextPageButton="false" ShowPreviousPageButton="false" FirstPageText="Frist"
                                        LastPageText="Last" NextPageText="Next" PreviousPageText="Prev" />
                                    <asp:NumericPagerField CurrentPageLabelCssClass="paging-item pagact" NextPreviousButtonCssClass="paging-item"
                                        NumericButtonCssClass="paging-item" PreviousPageText="&lt; Prev 10" NextPageText="Next 10 &gt;"
                                        ButtonCount="10" />
                                    <asp:NextPreviousPagerField ButtonType="Link" ButtonCssClass="paging-item" ShowLastPageButton="true"
                                        ShowNextPageButton="false" ShowPreviousPageButton="false" FirstPageText="Frist"
                                        LastPageText="Last" NextPageText="Next" PreviousPageText="Prev" />
                                </Fields>
                            </asp:DataPager>
                        </div>
                        <br clear="all" />
                    </center>
                    <!-- put content here -->
                </td>
            </tr>
        </tbody>
    </table>
</asp:Content>
