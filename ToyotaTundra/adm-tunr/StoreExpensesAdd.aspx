<%@ Page Title="Safe/Store Expenses >> Add General Expense " Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="StoreExpensesAdd.aspx.cs" Inherits="admin_elaf_StoreExpensesAdd" %>
<%@ MasterType VirtualPath="Admin.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table cellspacing="0" cellpadding="0" border="0" width="98%">
<tbody>
	<tr>
		<td class="innerContentHead">Safe/Store Expenses >> Add General Expense </td>
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
            <td >
                <asp:DropDownList ID="ddlCurrencyUsed" runat="server">
                    <asp:ListItem Text="AE Dirham" Value="2" Selected="True"></asp:ListItem>
                    <%--<asp:ListItem Text="US Dollar" Value="1"></asp:ListItem>--%>
                </asp:DropDownList>            
             &nbsp;<asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator3" runat="server" 
		            ControlToValidate="ddlCurrencyUsed" ValidationGroup="s" InitialValue=""
                    ErrorMessage=""><img id="Img2" runat="server" src='~/App_Themes/admin/images/warning.png' /> Required.</asp:RequiredFieldValidator>
             </td>
        </tr>
        <tr>
            <td>Expense Type <em class="red-txt">*</em></td>
            <td>
                <asp:DropDownList ID="ddlExpenseType" runat="server">
                </asp:DropDownList>            
                &nbsp;<asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator5" runat="server" 
		            ControlToValidate="ddlExpenseType" ValidationGroup="s" InitialValue=""
                    ErrorMessage=""><img id="Img32" runat="server" src='~/App_Themes/admin/images/warning.png' /> Required.</asp:RequiredFieldValidator>
             </td>
        </tr>
        <tr>
            <td>Expense Value <em class="red-txt">*</em> </td>
            <td>
                <asp:TextBox ID="txtValue" ValidationGroup="s" runat="server" Width="290px"></asp:TextBox>           
                &nbsp;<asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator6" runat="server" 
		            ControlToValidate="txtValue" ValidationGroup="s" ToolTip="Required."
                    ErrorMessage=""><img alt="Required." id="Img1" runat="server" src="~/App_Themes/admin/images/warning.png" /></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator3" ControlToValidate="txtValue"   
                    runat="server" ErrorMessage="Please validate entered value as a money."  
                    Display="Dynamic" CssClass="red-txt" ValidationGroup="s" SetFocusOnError="true" 
                    Type="Double" Operator="DataTypeCheck"></asp:CompareValidator>
                
             </td>
        </tr>	
        <tr>
		    <td  valign="top">Notes </td>
		    <td>
                <asp:TextBox ID="txtNotes" TextMode="MultiLine" runat="server" Height="100px" Width="400px"></asp:TextBox>                
		    </td>
	    </tr>
	    <tr>
		    <td colspan="2">
                <asp:HyperLink id="linkCancel" NavigateUrl="StoreExpensesView.aspx" Text="Cancel Saving & Go to List" runat="server" class="g-btn"></asp:HyperLink>
                <asp:Button ID="btnAdd" ValidationGroup="s" runat="server" Text="Save Expense" 
                    CssClass="g-btn" onclick="btnAdd_Click" />
		    </td>
	    </tr>
    </tbody>
    </table>
    <asp:HiddenField ID="hfID" runat="server" />

</asp:Content>

