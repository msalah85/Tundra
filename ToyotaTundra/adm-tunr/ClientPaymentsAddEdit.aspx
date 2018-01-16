<%@ Page Title=".:: Add/Edit Client Payment ::." Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="ClientPaymentsAddEdit.aspx.cs" Inherits="admin_elaf_ClientPaymentsAddEdit" %>


<%@ MasterType VirtualPath="Admin.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table cellspacing="0" cellpadding="0" border="0" width="98%">
<tbody>
	<tr>
		<td class="innerContentHead">Client Payments >> Add/Edit Payment
            &nbsp; <asp:Label ID="lblInvoiceFor" runat="server" ></asp:Label> &nbsp;<asp:Literal ID="ltlInvoiceID" runat="server"></asp:Literal>&nbsp; <asp:Label ID="lblSalePrice" runat="server" ></asp:Label>
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
            <td>Client <em class="red-txt">*</em></td>
            <td >
                <asp:DropDownList ID="ddlClients" runat="server">
                </asp:DropDownList>            
             &nbsp;<asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator3" runat="server" 
		            ControlToValidate="ddlClients" ValidationGroup="s" InitialValue=""
                    ErrorMessage="Required." ToolTip="Required."><img alt="Required" runat="server" id="imgRequired" src="~/App_Themes/admin/images/warning.png" /></asp:RequiredFieldValidator>
             </td>
        </tr>
        <tr>
            <td>Bank/Exchange Co.</td>
            <td >
                <asp:DropDownList ID="ddlExchangeCo" runat="server">
                </asp:DropDownList>            
             &nbsp;<asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator5" runat="server" 
		            ControlToValidate="ddlExchangeCo" ValidationGroup="s" InitialValue=""
                    ErrorMessage="Required." ToolTip="Required."><img alt="Required" runat="server" id="img22" src="~/App_Themes/admin/images/warning.png" /></asp:RequiredFieldValidator>
             </td>
        </tr>
	    <tr>
		    <td>Payment Value  </td>
		    <td>
		        <asp:TextBox ID="txtPaymentValue" ValidationGroup="s" Text="0.00" runat="server" Width="290px"></asp:TextBox> 
                &nbsp;
                <asp:DropDownList ID="ddlCurrency" runat="server" Width="100px">
                </asp:DropDownList>      
             <asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator1" runat="server" 
		            ControlToValidate="ddlCurrency" ValidationGroup="s" InitialValue=""
                    ErrorMessage="Required." ToolTip="Required."><img alt="Required" runat="server" id="im65g2" src="~/App_Themes/admin/images/warning.png" align="absmiddle" /></asp:RequiredFieldValidator>
             
             <asp:CompareValidator ID="CompareValidator2" runat="server"
                  ControlToValidate="txtPaymentValue" ErrorMessage="An amount must be &gt; 0.00" ToolTip="An amount value must be &gt; 0.00"
                  Operator="GreaterThan" Type="Double" Display="Dynamic" CssClass="red-txt" ValidationGroup="s" SetFocusOnError="true" 
                  ValueToCompare="0" ><img runat="server" id="Imgss2" src="~/App_Themes/admin/images/warning.png" align="absmiddle" /></asp:CompareValidator>
             
		        <asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator2" runat="server" 
		            ControlToValidate="txtPaymentValue" ValidationGroup="s" ToolTip="Required."
                    ErrorMessage="Required."><img runat="server" id="Imsg2" src="~/App_Themes/admin/images/warning.png" align="absmiddle" /></asp:RequiredFieldValidator>
                 <asp:CompareValidator ID="CompareValidator1" ControlToValidate="txtPaymentValue"   
                    runat="server" ErrorMessage="Please validate entered data as a money."  
                    ToolTip="Please validate entered data as a money."
                    Display="Dynamic" CssClass="red-txt" ValidationGroup="s" SetFocusOnError="true" 
                    Type="Double" Operator="DataTypeCheck"><img runat="server" id="Imsg3" src="~/App_Themes/admin/images/warning.png" align="absmiddle" /></asp:CompareValidator>
                  
            </td>
	    </tr>  
        <tr>
            <td>Payment Date <em class="red-txt">*</em>  </td>
            <td>
                <asp:TextBox ID="txtDate" ValidationGroup="s" runat="server" Width="290px"></asp:TextBox>           
                &nbsp;<asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator4" runat="server" 
		            ControlToValidate="txtDate" ValidationGroup="s" ToolTip="required."
                    ErrorMessage="Required."><img alt="Required" runat="server" align="absmiddle" id="img1" src="~/App_Themes/admin/images/warning.png" /></asp:RequiredFieldValidator>
               
              <asp:CompareValidator ID="CompareValidator3" runat="server" 
                SetFocusOnError="true" CssClass="red-txt" ValidationGroup="s"  ControlToValidate="txtDate"
                ErrorMessage="Please validate entred date." 
                ToolTip="Please validate entered date." Operator="DataTypeCheck" Type="Date"><img runat="server" id="pic22" src="~/App_Themes/admin/images/warning.png" align="absmiddle" /></asp:CompareValidator>

               <ajaxToolkit:CalendarExtender Format="MM/dd/yyyy" ID="CalendarExtender1" runat="server" Enabled="True" 
               TargetControlID="txtDate"></ajaxToolkit:CalendarExtender>

             </td>
        </tr>  
        <tr>
            <td>Received From</td>
            <td >
                 <asp:TextBox ID="txtReceivedName" ValidationGroup="s" runat="server" Width="290px"></asp:TextBox>           

             <%--   &nbsp;<asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator6" runat="server" 
		            ControlToValidate="txtReceivedName" ValidationGroup="s" 
                    ErrorMessage="<img src='../App_Themes/admin/images/warning.png' /> Required."></asp:RequiredFieldValidator>
             --%>
             </td>
        </tr>
        <tr>
		    <td    valign="top">Description   </td>
		    <td >
                <asp:TextBox ID="txtShortdesc" TextMode="MultiLine" runat="server" 
                    Height="100px" Width="400px"></asp:TextBox>
           <%-- <asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator3" runat="server" 
		            ControlToValidate="txtShortdesc" ValidationGroup="s"
                    ErrorMessage="Required."></asp:RequiredFieldValidator>--%>
                
		    </td>
	    </tr>
	    <tr>
		    <td colspan="2">
                <a id="A1" href="javascript:history.back();" class="g-btn">Cancel & Go back</a>
                <asp:Button ID="btnAdd" ValidationGroup="s" runat="server" Text="Save Payment" 
                    CssClass="g-btn" onclick="btnAdd_Click" />
		    </td>
	    </tr>
    </tbody>
    </table>
    <asp:HiddenField ID="hfID" runat="server" />
    <asp:HiddenField ID="hfRestValue" runat="server" />

</asp:Content>

