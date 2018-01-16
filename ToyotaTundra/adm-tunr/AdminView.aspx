<%@ Page Title=".:: Administrators List ::." Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="AdminView.aspx.cs" Inherits="admin_elaf_ViewEmployees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript" language="javascript">
        function DeleteConfirmation() {
            if (confirm("Are you sure! you want to delete the selected item? ") == true)
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
                <td class="innerContentHead">Administrators list<div class="div-right margin-right">
                    <a href="AdminAdd.aspx" title="Add new">
                        <img src="../App_Themes/admin/images/add-new.png" alt="Add new" /></a>
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
                    <center>
                        <asp:GridView ID="gvEmployees" runat="server" AutoGenerateColumns="False" ViewStateMode="Enabled"
                            Width="98%" CssClass="Grid" OnRowCommand="gvEmployees_RowCommand"
                            OnRowDataBound="gvEmployees_RowDataBound" PageSize="100"
                            OnPageIndexChanging="gvEmployees_PageIndexChanging"
                            OnRowDeleting="gvEmployees_RowDeleting">
                            <HeaderStyle CssClass="GridHead" />
                            <AlternatingRowStyle CssClass="Grid_alertnative" />
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <%# Eval("name")%>
                                    </ItemTemplate>
                                    <HeaderTemplate>
                                        Name                    
                                    </HeaderTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <%# Eval("email")%>
                                    </ItemTemplate>
                                    <HeaderTemplate>
                                        Email                    
                                    </HeaderTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <%# Eval("phone") %>
                                    </ItemTemplate>
                                    <HeaderTemplate>
                                        Phone
                                    </HeaderTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <%# Eval("StoreName") %>
                                    </ItemTemplate>
                                    <HeaderTemplate>
                                        Store
                                    </HeaderTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <%# Eval("user_name")%>
                                    </ItemTemplate>
                                    <HeaderTemplate>
                                        Login name
                                    </HeaderTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField ItemStyle-Width="40">
                                    <ItemTemplate>
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "admin-" + Eval("id") + "/" + MinutesuaeConcrete.ToSeoUrl(Eval("name")) + "Name.aspx" %>' Width="23" BorderStyle="None"
                                            ToolTip="Edit" ImageUrl="~/App_Themes/admin/images/document_edit.png" />

                                    </ItemTemplate>
                                    <HeaderTemplate>
                                        Edit
                                    </HeaderTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Delete" ItemStyle-Width="40">
                                    <ItemTemplate>
                                        <asp:Label ID="SupperAdmin" runat="server" ForeColor="#044f0e" Font-Italic="True"></asp:Label>
                                        <asp:ImageButton ID="LinkButton1"
                                            CommandArgument='<%# Eval("id") %>' Width="23" BorderStyle="None"
                                            CommandName="Delete" OnClientClick="return DeleteConfirmation();" runat="server" ImageUrl="~/App_Themes/admin/images/delete.png" />

                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <PagerSettings Mode="NumericFirstLast" />
                        </asp:GridView>

                    </center>
                    <!-- put content here -->
                </td>
            </tr>
        </tbody>
    </table>


</asp:Content>

