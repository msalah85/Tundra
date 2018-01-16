<%@ Page Title=".:: Clients Manager ::." Language="C#" MasterPageFile="Admin.master"
    AutoEventWireup="true" CodeFile="ClientsView.aspx.cs" Inherits="admin_elaf_ClientsView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript" language="javascript">
        function DeleteConfirmation() {
            if (confirm("Are you sure! you want to delete the selected item?") == true)
                return true;
            else
                return false;
        }
        function EndRequest(sender, e) {
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
                    Clients >> View list<div class="div-right margin-right">
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
                    <table width="98%" cellspacing="0" cellpadding="8" border="0" bgcolor="#fae8c5" class="Grid"
                        id="divAddEdit" runat="server" visible="false">
                        <tr align="center" valign="top">
                            <td>
                                Name
                            </td>
                            <td>
                                <asp:TextBox ID="txtNameS" ValidationGroup="s" runat="server"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator6"
                                    runat="server" ControlToValidate="txtNameS" ValidationGroup="s" ToolTip="Required."
                                    ErrorMessage=""><img alt="Notifier" src='../App_Themes/admin/images/warning.png' /></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                Email
                            </td>
                            <td>
                                <asp:TextBox ID="txtEmail" ValidationGroup="s" runat="server"></asp:TextBox>
                                 &nbsp;<asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator4" runat="server" 
		            ControlToValidate="txtEmail" ValidationGroup="s" 
                    ErrorMessage="Required."></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" SetFocusOnError="True"
                                    ControlToValidate="txtEmail" ErrorMessage="" ToolTip="Please verify email address."
                                    Display="Dynamic" CssClass="red-txt" ValidationGroup="s" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                    <img alt="Notifier" src='../App_Themes/admin/images/warning.png' /></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr align="center" valign="top">
                            <td>
                                Username
                            </td>
                            <td>
                                <asp:TextBox ID="txtUsername" ValidationGroup="s" runat="server"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator3"
                                    runat="server" ControlToValidate="txtUsername" ValidationGroup="s" ToolTip="Required."
                                    ErrorMessage=""><img alt="Notifier" src='../App_Themes/admin/images/warning.png' /></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                Password
                            </td>
                            <td>
                                <asp:TextBox ID="txtPassword" ValidationGroup="s" runat="server"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldVdalidatssor4"
                                    runat="server" ControlToValidate="txtPassword" ValidationGroup="s" ErrorMessage="Required."></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr valign="top">
                            <td>
                                Phone
                            </td>
                            <td>
                                <asp:TextBox ID="txtPhone" ValidationGroup="s" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                Fax
                            </td>
                            <td>
                                <asp:TextBox ID="txtFax" ValidationGroup="s" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Opening blance
                            </td>
                            <td>
                                <asp:TextBox ID="txtOpeningBalance" ValidationGroup="s" Text="0.00" runat="server"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator2"
                                    runat="server" ControlToValidate="txtOpeningBalance" ValidationGroup="s" ErrorMessage="Required."><img alt="Notifier" src='../App_Themes/admin/images/warning.png' /></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" ControlToValidate="txtOpeningBalance"
                                    runat="server" ErrorMessage="" ToolTip="Please validate entered data as a money."
                                    Display="Dynamic" CssClass="red-txt" ValidationGroup="s" SetFocusOnError="true"
                                    Type="Double" Operator="DataTypeCheck"><img alt="Notifier" src='../App_Themes/admin/images/warning.png' /></asp:CompareValidator>
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
                        <tr align="center" valign="top">
                            <td>
                                Active
                            </td>
                            <td>
                                <asp:CheckBox ID="cbActive" Text="Yes active." runat="server" Checked="true" />
                            </td>
                            <td>
                                SMS Active
                            </td>
                            <td>
                                <asp:CheckBox ID="cbActiveSMS" Text="Yes let this cient receive sms." runat="server" />
                                <%--<h6>Please validate client phone no. if he will receive sms. </h6>--%>
                            </td>
                        </tr>
                        <tr valign="top">
                            <td>
                                Description
                            </td>
                            <td>
                                <asp:TextBox ID="txtShortdesc" TextMode="MultiLine" runat="server" Height="60px"
                                    Width="350"></asp:TextBox>
                            </td>
                            <td colspan="2">
                                <asp:HiddenField ID="hfID" runat="server" />
                                <asp:Button ID="btnAdd" ValidationGroup="s" Width="100" runat="server" Text="Save"
                                    CssClass="g-btn-save" OnClick="btnAdd_Click" />
                                <asp:Button ID="btnCancel" runat="server" Width="100" Text="Cancel" CssClass="g-btn-del"
                                    OnClick="btnCancel_Click" />
                            </td>
                        </tr>
                    </table>
                    <!-- end add/edit box-->
                    <br />
                    <br />
                    <!-- search box -->
                    <table width="98%" cellspacing="0" cellpadding="8" border="0" class="Grid">
                        <tr align="center" valign="top">
                            <td>
                                Active
                            </td>
                            <td colspan="2">
                                Client name
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
                        <asp:GridView ID="gvClients" runat="server" AutoGenerateColumns="False" Width="98%"
                            CssClass="Grid" OnRowCommand="gvClients_RowCommand" PageSize="100" OnPageIndexChanging="gvClients_PageIndexChanging"
                            OnRowDeleting="gvClients_RowDeleting">
                            <HeaderStyle CssClass="GridHead" />
                            <AlternatingRowStyle CssClass="Grid_alertnative" />
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:HyperLink CssClassclass='toolTip' ID="HyperLink111" runat="server" NavigateUrl='<%# "client/" + Eval("ClientID") + "/payments/" + MinutesuaeConcrete.ToSeoUrl(Eval("ClientName")) + ".aspx" %>'
                                            ToolTip="View payments to this client" Text='<%# Eval("ClientName")%>' />
                                    </ItemTemplate>
                                    <HeaderTemplate>
                                        Name
                                    </HeaderTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <%# Eval("ClientUsername")%>
                                    </ItemTemplate>
                                    <HeaderTemplate>
                                        Username
                                    </HeaderTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <%# Eval("ClientEmail")%>
                                    </ItemTemplate>
                                    <HeaderTemplate>
                                        Email
                                    </HeaderTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <%# Eval("ClientPhone")%>
                                    </ItemTemplate>
                                    <HeaderTemplate>
                                        Phone
                                    </HeaderTemplate>
                                </asp:TemplateField>
                                <%--
            <asp:TemplateField ItemStyle-Width="100" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <%# Eval("Priority")%>                    
                </ItemTemplate>
                <HeaderTemplate>                    
                        Priority                    
                </HeaderTemplate>
            </asp:TemplateField>--%>
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
                                        <asp:HyperLink CssClass='toolTip' ID="HyperLink1221" runat="server" NavigateUrl='<%# "client-" + Eval("ClientID") + "/addpayments.aspx"%>'
                                            Width="23" BorderStyle="None" ToolTip="Add payment to this client" ImageUrl="~/App_Themes/admin/images/modeyAdd.png" />
                                    </ItemTemplate>
                                    <HeaderTemplate>
                                        Add Payment
                                    </HeaderTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField ItemStyle-Width="40">
                                    <ItemTemplate>
                                        <asp:HyperLink CssClass='toolTip' ID="HyperLink11" runat="server" NavigateUrl='<%# "client/" + Eval("ClientID") + "/invoices/" + MinutesuaeConcrete.ToSeoUrl(Eval("ClientName")) + ".aspx" %>'
                                            Width="23" BorderStyle="None" ToolTip="View invoices for this client" ImageUrl="~/App_Themes/admin/images/billShow.png" />
                                    </ItemTemplate>
                                    <HeaderTemplate>
                                        Invoices
                                    </HeaderTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField ItemStyle-Width="40">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="lbEdit" CommandArgument='<%# Eval("ClientID") %>' CssClass="showPeriodMsgPopup"
                                            Width="23" BorderStyle="None" CommandName="EditItem" runat="server" ToolTip="Edit"
                                            ImageUrl="~/App_Themes/admin/images/document_edit.png" />
                                    </ItemTemplate>
                                    <HeaderTemplate>
                                        Edit
                                    </HeaderTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Delete" ItemStyle-Width="40">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="LinkButton1" CommandArgument='<%# Eval("ClientID") %>' Width="23"
                                            BorderStyle="None" CommandName="Delete" OnClientClick="return DeleteConfirmation();"
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
