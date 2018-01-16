<%@ Page Title=".:: Add/Edit Payment ::." Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="PaymentsAddEdit.aspx.cs" Inherits="admin_elaf_PaymentsAddEdit" %>


<%@ MasterType VirtualPath="Admin.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table cellspacing="0" cellpadding="0" border="0" width="98%">
<tbody>
	<tr>
		<td class="innerContentHead">Payments for Company <asp:Label ID="lblCompanyCode" runat="server"></asp:Label> >> Add/Edit Payment 
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
            <td >
                <asp:DropDownList ID="ddlCurrencyUsed" Enabled="false" runat="server">
                    <asp:ListItem Text="" Value=""></asp:ListItem>
                    <asp:ListItem Text="USD ($)" Value="1"></asp:ListItem>
                    <asp:ListItem Text="UAE (AED)" Value="2"></asp:ListItem>
                </asp:DropDownList>            
             &nbsp;<asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator3" runat="server" 
		            ControlToValidate="ddlCurrencyUsed" ValidationGroup="s" InitialValue=""
                    ErrorMessage=""><img id="Img3" runat="server" src='~/App_Themes/admin/images/warning.png' /> Required.</asp:RequiredFieldValidator>
             </td>
        </tr>
        <tr>
            <td>Company Type</td>
            <td align="left">
                <asp:RadioButtonList RepeatDirection="Horizontal" ID="rblCompanyType" 
                    runat="server" AutoPostBack="True" 
                    onselectedindexchanged="rblCompanyType_SelectedIndexChanged">
                    <asp:ListItem Selected="True" Text="Buyer (Account)" Value="buyer"></asp:ListItem>
                    <asp:ListItem Text="Towing Co." Value="towing"></asp:ListItem>
                    <asp:ListItem Text="Shipping Co." Value="shipping"></asp:ListItem>                    
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>Companies Due to<em class="red-txt">*</em></td>
            <td>
                <asp:DropDownList ID="ddlDueforCompany" runat="server">
                </asp:DropDownList>            
             &nbsp;<asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator2" runat="server" 
		            ControlToValidate="ddlDueforCompany" ValidationGroup="s" InitialValue=""
                    ErrorMessage=""><img id="Img1" runat="server" src='~/App_Themes/admin/images/warning.png' /> Required.</asp:RequiredFieldValidator>
             
             </td>
        </tr>
        <tr>
            <td>Exchange Co.<em class="red-txt">*</em></td>
            <td>
                <asp:DropDownList ID="ddlExchangeCo" runat="server">
                </asp:DropDownList>            
             &nbsp;<asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator1" runat="server" 
		            ControlToValidate="ddlExchangeCo" ValidationGroup="s" InitialValue=""
                    ErrorMessage=""><img id="Img2" runat="server" src='~/App_Themes/admin/images/warning.png' /> Required.</asp:RequiredFieldValidator>
             
             </td>
        </tr>
        <tr>
            <td>Invoice No. <em class="red-txt">*</em> </td>
            <td>
                <asp:TextBox ID="txtInvoiceNo" ValidationGroup="s" runat="server" Width="290px"></asp:TextBox>           
                &nbsp;<asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator4" runat="server" 
		            ControlToValidate="txtInvoiceNo" ValidationGroup="s" 
                    ErrorMessage="Required."></asp:RequiredFieldValidator>
                
             </td>
        </tr>	
        
        <tr>
            <td>Payment Value <em class="red-txt">*</em> </td>
            <td>
                <asp:TextBox ID="txtValue" ValidationGroup="s" runat="server" Width="290px"></asp:TextBox>           
                &nbsp;<asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator6" runat="server" 
		            ControlToValidate="txtValue" ValidationGroup="s" 
                    ErrorMessage="Required."></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator3" ControlToValidate="txtValue"   
                    runat="server" ErrorMessage="Please validate entered value as a money."  
                    Display="Dynamic" CssClass="red-txt" ValidationGroup="s" SetFocusOnError="true" 
                    Type="Double" Operator="DataTypeCheck"></asp:CompareValidator>
                
             </td>
        </tr>	
	    <tr>
		    <td  width="26%" valign="top">Payment Date <em class="red-txt">*</em> </td>
		    <td  width="74%" valign="top">
               <asp:TextBox ID="txtPaymentDate" ValidationGroup="s" runat="server" Width="290px"></asp:TextBox> 
               <ajaxToolkit:CalendarExtender Format="MM/dd/yyyy" ID="CalendarExtender1" runat="server" Enabled="True" TargetControlID="txtPaymentDate"></ajaxToolkit:CalendarExtender>
		       &nbsp;<asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidatorsasa2" runat="server" 
		            ControlToValidate="txtPaymentDate" ValidationGroup="s"
                    ErrorMessage="Required."></asp:RequiredFieldValidator>
                 <asp:CompareValidator ID="CompareValidator1" ControlToValidate="txtPaymentDate"   
                    runat="server" ErrorMessage="Please validate entered date."  
                    Display="Dynamic" CssClass="red-txt" ValidationGroup="s" SetFocusOnError="true" 
                    Type="Date" Operator="DataTypeCheck"></asp:CompareValidator>

		    </td>
	    </tr>
        <tr>
		    <td  valign="top">Notes </td>
		    <td>
                <asp:TextBox ID="txtNotes" TextMode="MultiLine" runat="server" Height="100px" Width="400px"></asp:TextBox>
           <%-- <asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator3" runat="server" 
		            ControlToValidate="txtShortdesc" ValidationGroup="s"
                    ErrorMessage="Required."></asp:RequiredFieldValidator>--%>
                
		    </td>
	    </tr>
	    <tr>
		    <td colspan="2">
                <asp:HyperLink id="linkCancel" NavigateUrl="javascript:history.back();" Text="Cancel Saving & Go Back" runat="server" class="g-btn"></asp:HyperLink>
                <asp:Button ID="btnAdd" ValidationGroup="s" runat="server" Text="Save Payment" 
                    CssClass="g-btn" onclick="btnAdd_Click" />
		    </td>
	    </tr>
    </tbody>
    </table>
    <asp:HiddenField ID="hfID" runat="server" />

</asp:Content>

