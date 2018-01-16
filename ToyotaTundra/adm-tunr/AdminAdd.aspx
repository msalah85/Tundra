<%@ Page Title=".:: Add new Administrator ::." Language="C#" MasterPageFile="Admin.master"
    AutoEventWireup="true" CodeFile="AdminAdd.aspx.cs" Inherits="admin_elaf_EmployeeAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellspacing="0" cellpadding="0" border="0" width="950px">
        <tbody>
            <!-- Header -->
            <tr>
                <td class="innerContentHead">
                    Add new Administrator
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
                        <asp:Label ID="lblError" CssClass="red-txt" runat="server"></asp:Label>
                        <table width="98%" cellspacing="0" cellpadding="8" border="0" class="Grid">
                            <tr align="left" valign="top">
                                <td width="19%">
                                    Full name <span class="red-txt">*</span>
                                </td>
                                <td width="81%">
                                    <asp:TextBox ID="txtEmployeeName" runat="server"></asp:TextBox>
                                    &nbsp;<asp:RequiredFieldValidator ControlToValidate="txtEmployeeName" SetFocusOnError="true"
                                        ErrorMessage="Please enter full name." Display="Dynamic" CssClass="red-txt" ValidationGroup="s"
                                        ID="RequiredFieldValidator1" runat="server"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr align="left" valign="top">
                                <td>
                                    Store <span class="red-txt">*</span>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlStore" runat="server">
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ControlToValidate="txtEmployeeName" SetFocusOnError="true"
                                        ErrorMessage="Please select store." Display="Dynamic" CssClass="red-txt" InitialValue=""
                                        ValidationGroup="s" ID="RequiredFieldValidator2" runat="server"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr align="left" valign="top">
                                <td>
                                    Permissions <span class="red-txt">*</span>
                                </td>
                                <td>
                                    <asp:RadioButtonList ID="rblPermission" runat="server">
                                        <asp:ListItem Value="A" Selected="True"> A Full Permissions.</asp:ListItem>
                                        <asp:ListItem Value="B"> B Limited Permissions.</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr align="left" valign="top">
                                <td>
                                    City <span class="red-txt">*</span>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                                    <%-- &nbsp;<asp:RequiredFieldValidator ControlToValidate="txtCity" SetFocusOnError="true"  ErrorMessage="Please enter City." Display="Dynamic" CssClass="red-txt" ValidationGroup="s" ID="RequiredFieldValidator4" runat="server" ></asp:RequiredFieldValidator>--%>
                                </td>
                            </tr>
                            <tr align="left" valign="top">
                                <td>
                                    Address <span class="red-txt">*</span>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                                    <%-- &nbsp;<asp:RequiredFieldValidator ControlToValidate="txtAddress" SetFocusOnError="True"  ErrorMessage="Please enter Address." Display="Dynamic" CssClass="red-txt" ValidationGroup="s" ID="RequiredFieldValidator5" runat="server" ></asp:RequiredFieldValidator>--%>
                                </td>
                            </tr>
                            <tr align="left" valign="top">
                                <td>
                                    Phone <span class="red-txt">*</span>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtTel" runat="server"></asp:TextBox>
                                    <%--&nbsp;<asp:RequiredFieldValidator ControlToValidate="txtTel" SetFocusOnError="True"  ErrorMessage="Please enter Phone." Display="Dynamic" CssClass="red-txt" ValidationGroup="s" ID="RequiredFieldValidator6" runat="server" ></asp:RequiredFieldValidator>--%>
                                </td>
                            </tr>
                            <tr align="left" valign="top">
                                <td>
                                    Email <span class="red-txt">*</span>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                    &nbsp;<asp:RequiredFieldValidator ControlToValidate="txtEmail" SetFocusOnError="True"
                                        ErrorMessage="Please enter Email." Display="Dynamic" CssClass="red-txt" ValidationGroup="s"
                                        ID="RequiredFieldValidator7" runat="server"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" SetFocusOnError="True"
                                        ControlToValidate="txtEmail" ErrorMessage="Please verify Email." Display="Dynamic"
                                        CssClass="red-txt" ValidationGroup="s" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr align="left" valign="top">
                                <td>
                                    Username <span class="red-txt">*</span>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                                    &nbsp;<asp:RequiredFieldValidator SetFocusOnError="True" ControlToValidate="txtUserName"
                                        ErrorMessage="Please enter User name." Display="Dynamic" CssClass="red-txt" ValidationGroup="s"
                                        ID="RequiredFieldValidator10" runat="server"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr align="left" valign="top">
                                <td>
                                    Password <span class="red-txt">*</span>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                                    &nbsp;<asp:RequiredFieldValidator SetFocusOnError="True" ControlToValidate="txtPassword"
                                        ErrorMessage="Please enter Password." Display="Dynamic" CssClass="red-txt" ValidationGroup="s"
                                        ID="RequiredFieldValidator8" runat="server"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr align="left" valign="top">
                                <td>
                                    Mobile<span class="red-txt">*</span>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
                                    <%--&nbsp;<asp:RequiredFieldValidator ControlToValidate="txtMobile" ErrorMessage="Please enter Mobile." Display="Dynamic" SetFocusOnError="true" CssClass="red-txt" ValidationGroup="s" ID="RequiredFieldValidator9" runat="server" ></asp:RequiredFieldValidator>--%>
                                </td>
                            </tr>
                            <tr align="left" valign="top">
                                <td>
                                    Fax
                                </td>
                                <td>
                                    <asp:TextBox ID="txtFax" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr align="center" valign="top">
                                <td>
                                </td>
                                <td>
                                    <asp:Button ID="btnSubmit" CssClass="g-btn" ValidationGroup="s" runat="server" Text="Add"
                                        OnClick="btnSubmit_Click" />
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
