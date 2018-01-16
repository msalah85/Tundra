<%@ Page Title=".:: Maker View ::." Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true"
    CodeFile="MarkerView.aspx.cs" Inherits="admin_elaf_MarkerView" %>

<%@ MasterType VirtualPath="Admin.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript" language="javascript">
        function DeleteConfirmation() {
            if (confirm("Are you sure! you want to delete the selected item?") == true)
                return true;
            else
                return false;
        }
        function EndRequest(sender, args) {
            $(document).ready(function () {

                $('.showPeriodMsgPopup').click(function () {
                    //window.scrollTo(0, 0);
                    $('html').animate({ scrollTop: 0 }, 'slow'); //IE, FF
                    $('body').animate({ scrollTop: 0 }, 'slow'); //chrome, don't know if safary works
                });

            });
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellspacing="0" cellpadding="0" border="0" width="950px">
        <tbody>
            <!-- Header -->
            <tr>
                <td class="innerContentHead">
                    Makers >> View list<div class="div-right margin-right">
                        <asp:ImageButton runat="server" ID="btnAddNew" ToolTip="Add new" ImageUrl="../App_Themes/admin/images/add-new.png"
                            Width="20" Height="20" BorderStyle="None" BorderWidth="0" OnClick="btnAddNew_Click" /></div>
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
                    <!-- add/edit box -->
                    <table width="98%" cellspacing="0" cellpadding="8" bgcolor="#fae8c5" border="0" class="Grid"
                        id="divAddEdit" runat="server" visible="false">
                        <tr align="center" valign="top">
                            <td>
                                Name (en)
                            </td>
                            <td>
                                <asp:TextBox ID="txtNameEn" ValidationGroup="s" runat="server"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator6"
                                    runat="server" ControlToValidate="txtNameEn" ValidationGroup="s" ToolTip="Required."
                                    ErrorMessage=""><img alt="Notifier" src='../App_Themes/admin/images/warning.png' /></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                Name (ar)
                            </td>
                            <td>
                                <asp:TextBox ID="txtNameAr" ValidationGroup="s" runat="server"></asp:TextBox>
                                <%-- &nbsp;<asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator4" runat="server" 
		            ControlToValidate="txtEmail" ValidationGroup="s" 
                    ErrorMessage="Required."></asp:RequiredFieldValidator>--%>
                            </td>
                        </tr>
                        <tr align="center" valign="top">
                            <td>
                                Active
                            </td>
                            <td>
                                <asp:CheckBox ID="cbActive" Text="Yes active." runat="server" Checked="true" />
                            </td>
                            <td>
                                Priority
                            </td>
                            <td>
                                <asp:TextBox ID="txtPriority" ValidationGroup="s" Text="1" runat="server"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator1"
                                    runat="server" ControlToValidate="txtPriority" ValidationGroup="s" ToolTip="Required"
                                    ErrorMessage=""><img alt="Notifier" src='../App_Themes/admin/images/warning.png' /></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator2" ControlToValidate="txtPriority" runat="server"
                                    ErrorMessage="" ToolTip="Please validate priority as number." Display="Dynamic"
                                    CssClass="red-txt" ValidationGroup="s" SetFocusOnError="true" Type="Integer"
                                    Operator="DataTypeCheck"><img alt="Notifier" src='../App_Themes/admin/images/warning.png' /></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <asp:HiddenField ID="hfID" runat="server" />
                                <asp:Button ID="btnAdd" ValidationGroup="s" runat="server" Text="Save" CssClass="g-btn-save"
                                    OnClick="btnAdd_Click" />
                                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="g-btn-del" OnClick="btnCancel_Click" />
                            </td>
                        </tr>
                    </table>
                    <!-- end add/edit box-->
                    <!-- search box -->
                    <table width="98%" cellspacing="0" cellpadding="8" border="0" class="Grid">
                        <tr align="center" valign="top">
                            <td>
                                Active
                            </td>
                            <td colspan="2">
                                Maker name
                            </td>
                        </tr>
                        <tr align="center" valign="top">
                            <td>
                                <asp:RadioButtonList ID="rblActive" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Text="All" Value="" Selected="True"></asp:ListItem>
                                    <asp:ListItem Text="Active" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="Not active" Value="0"></asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td>
                                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Button ID="btnSearch" CssClass="g-btn" Width="100px" runat="server" Text="Filter"
                                    OnClick="btnSearch_Click" />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <!-- end search box -->
                    <center>
                        <asp:GridView ID="gvMarkers" runat="server" AutoGenerateColumns="False" Width="98%"
                            CssClass="Grid" OnRowCommand="gvMarkers_RowCommand" PageSize="100" OnPageIndexChanging="gvMarkers_PageIndexChanging"
                            OnRowDeleting="gvMarkers_RowDeleting">
                            <HeaderStyle CssClass="GridHead" />
                            <AlternatingRowStyle CssClass="Grid_alertnative" />
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <%# Eval("MarkerNameEn")%>
                                    </ItemTemplate>
                                    <HeaderTemplate>
                                        Name (en)
                                    </HeaderTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <%# Eval("MarkerNameAr")%>
                                    </ItemTemplate>
                                    <HeaderTemplate>
                                        Name (ar)
                                    </HeaderTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField ItemStyle-Width="100" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <%# Eval("Priority")%>
                                    </ItemTemplate>
                                    <HeaderTemplate>
                                        Priority
                                    </HeaderTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField ItemStyle-Width="100" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <%# Eval("Active")%>
                                    </ItemTemplate>
                                    <HeaderTemplate>
                                        Active
                                    </HeaderTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField ItemStyle-Width="40">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="lbEdit" CommandArgument='<%# Eval("MarkerID") %>' CssClass="showPeriodMsgPopup"
                                            Width="23" BorderStyle="None" CommandName="EditItem" runat="server" ToolTip="Edit"
                                            ImageUrl="~/App_Themes/admin/images/document_edit.png" />
                                    </ItemTemplate>
                                    <HeaderTemplate>
                                        Edit
                                    </HeaderTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Delete" ItemStyle-Width="40">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="LinkButton1" CommandArgument='<%# Eval("MarkerID") %>' ToolTip="Delete"
                                            Width="23" BorderStyle="None" CommandName="Delete" OnClientClick="return DeleteConfirmation();"
                                            runat="server" ImageUrl="~/App_Themes/admin/images/delete.png" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <PagerSettings Mode="NumericFirstLast" />
                        </asp:GridView>
                        <br clear="all" />
                    </center>
                    <!-- put content here -->
                </td>
            </tr>
        </tbody>
    </table>
</asp:Content>
