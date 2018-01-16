<%@ Page Title=".::  Add Value to Safe ::." Language="C#" MasterPageFile="Admin.master"
    AutoEventWireup="true" CodeFile="SafeDebit.aspx.cs" Inherits="ketmeerAdmin_SafeDebit" %>

<%@ MasterType VirtualPath="Admin.master" %>

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
                <td class="innerContentHead">
                    My Safe
                    <div class="div-right margin-right">
                        <asp:ImageButton runat="server" ID="btnAddNew" ToolTip="Add new" ImageUrl="../App_Themes/admin/images/add-new.png"
                            Width="20" Height="20" BorderStyle="None" BorderWidth="0" OnClick="btnAddNew_Click" /></div>
                </td>
            </tr>
            <!-- Seperator -->
            <tr>
                <td style="height: 15px;">
                </td>
            </tr>
            <!-- ContentPlaceHolder -->
            <tr>
                <td class="innerPlaceHolder" style="padding-top: 10px;">
                    <center>
                        <!-- put content here -->
                        <table width="98%" cellspacing="0" cellpadding="8" border="0" class="Grid" bgcolor="#fae8c5"
                            id="divAddEdit" runat="server" visible="false">
                            <tr align="right" valign="top">
                                <td width="19%">
                                    Value<span class="red-txt">*</span><asp:HiddenField ID="hfId" runat="server" />
                                </td>
                                <td width="81%">
                                    <asp:TextBox ID="txtValue" runat="server" ValidationGroup="s"></asp:TextBox>
                                    AED
                                    <asp:RequiredFieldValidator ControlToValidate="txtValue" SetFocusOnError="true" ErrorMessage="<img src='../App_Themes/admin/images/warning.png' />"
                                        Display="Dynamic" CssClass="red-txt" ValidationGroup="s" ID="RequiredFieldValidator1"
                                        runat="server"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ControlToValidate="txtValue" SetFocusOnError="true" Operator="DataTypeCheck"
                                        ToolTip="Please validate entered data as a money." ErrorMessage="<img src='../App_Themes/admin/images/warning.png' />"
                                        Display="Dynamic" CssClass="red-txt" ValidationGroup="s" ID="RequiredFieldValidator4"
                                        runat="server" Type="Double"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr align="right" valign="top">
                                <td width="19%">
                                    Date<span class="red-txt">*</span>
                                </td>
                                <td width="81%">
                                    <asp:TextBox ID="txtAddDate" runat="server" ValidationGroup="s"></asp:TextBox>
                                    <ajaxToolkit:CalendarExtender Format="MM/dd/yyyy" ID="txtJionDate_CalendarExtender" runat="server" Enabled="True"
                                        TargetControlID="txtAddDate">
                                    </ajaxToolkit:CalendarExtender>
                                    &nbsp;
                                    <asp:RequiredFieldValidator ControlToValidate="txtAddDate" SetFocusOnError="true"
                                        ErrorMessage="<img src='../App_Themes/admin/images/warning.png' />" Display="Dynamic"
                                        CssClass="red-txt" ValidationGroup="s" ID="RequiredFieldValidator2" runat="server"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="CompareValidator2" ControlToValidate="txtAddDate" runat="server"
                                        ErrorMessage="<img src='../App_Themes/admin/images/warning.png' />" Display="Dynamic"
                                        CssClass="red-txt" ValidationGroup="s" SetFocusOnError="True" Type="Date" Operator="DataTypeCheck"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr align="right" valign="top">
                                <td>
                                    Follow-up by <span class="red-txt">*</span>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlEmployee" runat="server">
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ControlToValidate="ddlEmployee" SetFocusOnError="True"
                                        ErrorMessage="<img src='../App_Themes/admin/images/warning.png' />" Display="Dynamic"
                                        CssClass="red-txt" ValidationGroup="s" ID="RequiredFieldValidator5" InitialValue=""
                                        runat="server"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr align="right" valign="top">
                                <td>
                                    Store <span class="red-txt">*</span>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlStore" runat="server">
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ControlToValidate="ddlStore" SetFocusOnError="True" ErrorMessage="<img src='../App_Themes/admin/images/warning.png' />"
                                        Display="Dynamic" CssClass="red-txt" ValidationGroup="s" ID="RequiredFieldValidator3"
                                        InitialValue="" runat="server"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr align="center" valign="top">
                                <td>
                                </td>
                                <td>
                                    <asp:Button ID="btnSubmit" CssClass="g-btn-save" Width="100px" ValidationGroup="s"
                                        runat="server" Text="Save" OnClick="btnSubmit_Click" />
                                    <asp:Button ID="btnCancel" CssClass="g-btn-del" Width="100px" runat="server" Text="Cancel"
                                        OnClick="btnCancel_Click" />
                                    &nbsp;<asp:Label ID="lblError" CssClass="red-txt" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </center>
                    <br />
                    <br />
                    <center>
                        <asp:GridView ID="gvMainSafeDebit" runat="server" AutoGenerateColumns="False" BorderWidth="0"
                            Width="98%" CssClass="Grid" PageSize="100" OnPageIndexChanging="gvMainSafeDebit_PageIndexChanging"
                            OnRowCommand="gvMainSafeDebit_RowCommand" OnRowDeleting="gvMainSafeDebit_RowDeleting">
                            <HeaderStyle CssClass="GridHead" />
                            <AlternatingRowStyle CssClass="Grid_alertnative" />
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <%# Eval("SafeDebitValue")%>
                                        AED&nbsp;
                                    </ItemTemplate>
                                    <HeaderTemplate>
                                        Value
                                    </HeaderTemplate>
                                    <ItemStyle HorizontalAlign="Left" Width="150px"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <%# Eval("name")%>
                                    </ItemTemplate>
                                    <HeaderTemplate>
                                        Accountant
                                    </HeaderTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <%# Eval("StoreName")%>
                                    </ItemTemplate>
                                    <HeaderTemplate>
                                        Store Name
                                    </HeaderTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <%# MinutesuaeConcrete.GetDateOnly(Eval("SafeDebitDate"), "dd/MM/yy") %>
                                    </ItemTemplate>
                                    <HeaderTemplate>
                                        Date
                                    </HeaderTemplate>
                                    <ItemStyle HorizontalAlign="Center" Width="80px"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:ImageButton ID="HyperLink1" runat="server" Width="23" BorderStyle="None" CommandArgument='<%# Eval("SafeID") %>'
                                            CommandName="EditExpense" ToolTip="Edit" ImageUrl="~/App_Themes/admin/images/document_edit.png" />
                                    </ItemTemplate>
                                    <HeaderTemplate>
                                        Edit
                                    </HeaderTemplate>
                                    <ItemStyle HorizontalAlign="Center" Width="40px"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Delete" ItemStyle-Width="40">
                                    <ItemTemplate>
                                        <asp:Label ID="SupperAdmin" runat="server" ForeColor="#044f0e" Font-Italic="True"></asp:Label>
                                        <asp:ImageButton ID="LinkButton1" CommandArgument='<%# Eval("SafeID") %>' Width="23"
                                            BorderStyle="None" CommandName="Delete" OnClientClick="return DeleteConfirmation();"
                                            runat="server" ImageUrl="~/App_Themes/admin/images/delete.png" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <PagerSettings Mode="NumericFirstLast" />
                        </asp:GridView>
                        <table width="98%" cellspacing="0" cellpadding="0" border="0" class="Grid" id="divTotalContainer"
                            runat="server">
                            <tr class="GridHead">
                                <td width="150px" id="divSafeTotal" runat="server" align="left">
                                </td>
                                <td>
                                    Total Safe Value
                                </td>
                            </tr>
                        </table>
                    </center>
                    <!-- put content here -->
                </td>
            </tr>
        </tbody>
    </table>
</asp:Content>
