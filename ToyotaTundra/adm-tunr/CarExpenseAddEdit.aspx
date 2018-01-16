<%@ Page Title=".:: Add Expense for Car ::." Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="CarExpenseAddEdit.aspx.cs" Inherits="admin_elaf_CarExpense" %>

<%@ MasterType VirtualPath="Admin.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellspacing="0" cellpadding="0" border="0" width="98%">
        <tbody>
            <tr>
                <td class="innerContentHead">Expenses for Car >> Add/Edit Expense for car: 
            <asp:Label ID="lblCarCode" runat="server"></asp:Label>
                </td>
            </tr>
        </tbody>
    </table>
    <br />
    <asp:Label ID="lblError" runat="server" ForeColor="red"></asp:Label>
    <br />
    <table style="border-collapse: collapse;" cellspacing="2" cellpadding="2" width="98%" class="Grid">
        <tbody>
            <tr>
                <td>Currency Used <em class="red-txt">*</em></td>
                <td>
                    <asp:DropDownList ID="ddlCurrencyUsed" runat="server">
                    </asp:DropDownList>
                    &nbsp;<asp:RequiredFieldValidator SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator3" runat="server"
                        ControlToValidate="ddlCurrencyUsed" ValidationGroup="s" InitialValue=""
                        ErrorMessage="">
                        <img alt="img" id="Img2" runat="server" src='~/App_Themes/admin/images/warning.png' />
                        Required.
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Company Type</td>
                <td align="left">
                    <asp:RadioButtonList RepeatDirection="Horizontal" ID="rblCompanyType"
                        runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblCompanyType_SelectedIndexChanged">
                        <asp:ListItem Selected="True" Text="Buyer (Account)" Value="buyer"></asp:ListItem>
                        <asp:ListItem Text="Towing Co." Value="towing"></asp:ListItem>
                        <asp:ListItem Text="Shipping Co." Value="shipping"></asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr id="divCoType" runat="server">
                <td>Companies Due to<em class="red-txt">*</em></td>
                <td>
                    <asp:DropDownList ID="ddlDueforCompany" runat="server">
                    </asp:DropDownList>
                    &nbsp;<asp:RequiredFieldValidator SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator2" runat="server"
                        ControlToValidate="ddlDueforCompany" ValidationGroup="s" InitialValue=""
                        ErrorMessage=""><img alt="" runat="server" src='~/App_Themes/admin/images/warning.png' /> Required.</asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td>Expense Type <em class="red-txt">*</em></td>
                <td>
                    <asp:DropDownList ID="ddlExpenseType" runat="server">
                    </asp:DropDownList>
                    &nbsp;<asp:RequiredFieldValidator SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator5" runat="server"
                        ControlToValidate="ddlExpenseType" ValidationGroup="s" InitialValue=""
                        ErrorMessage="">
                        <img id="Img1" runat="server" src='~/App_Themes/admin/images/warning.png' />
                        Required.
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Invoice No. <em class="red-txt">*</em> </td>
                <td>
                    <asp:TextBox ID="txtInvoiceNo" ValidationGroup="s" runat="server" Width="290px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator4" runat="server"
                        ControlToValidate="txtInvoiceNo" ValidationGroup="s"
                        ErrorMessage="Required."></asp:RequiredFieldValidator>

                </td>
            </tr>

            <tr>
                <td>Expense Value <em class="red-txt">*</em> </td>
                <td>
                    <asp:TextBox ID="txtValue" ValidationGroup="s" runat="server" Width="290px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator6" runat="server"
                        ControlToValidate="txtValue" ValidationGroup="s"
                        ErrorMessage="Required."></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator3" ControlToValidate="txtValue"
                        runat="server" ErrorMessage="Please validate entered value as a money."
                        Display="Dynamic" CssClass="red-txt" ValidationGroup="s" SetFocusOnError="true"
                        Type="Double" Operator="DataTypeCheck"></asp:CompareValidator>

                </td>
            </tr>
            <tr>
                <td>Due Date <em class="red-txt">*</em> </td>
                <td>
                    <asp:TextBox ID="txtDueDate" ValidationGroup="s" runat="server" Width="290px"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender Format="MM/dd/yyyy" ID="CalendarExtender2" runat="server" Enabled="True" TargetControlID="txtDueDate"></ajaxToolkit:CalendarExtender>
                    &nbsp;<asp:RequiredFieldValidator SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator1" runat="server"
                        ControlToValidate="txtDueDate" ValidationGroup="s"
                        ErrorMessage="Required."></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator2" ControlToValidate="txtDueDate"
                        runat="server" ErrorMessage="Please validate entered date."
                        Display="Dynamic" CssClass="red-txt" ValidationGroup="s" SetFocusOnError="true"
                        Type="Date" Operator="DataTypeCheck"></asp:CompareValidator>

                </td>
            </tr>
            <tr>
                <td valign="top">Notes </td>
                <td>
                    <asp:TextBox ID="txtNotes" TextMode="MultiLine" runat="server" Height="100px" Width="400px"></asp:TextBox>                    
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:HyperLink ID="linkCancel" NavigateUrl="CarExpenseView.aspx" Text="Cancel Saving & Go to List" runat="server" class="g-btn"></asp:HyperLink>
                    <asp:Button ID="btnAdd" ValidationGroup="s" runat="server" Text="Save Expense"
                        CssClass="g-btn" OnClick="btnAdd_Click" />
                </td>
            </tr>
        </tbody>
    </table>
    <asp:HiddenField ID="hfID" runat="server" />

</asp:Content>

