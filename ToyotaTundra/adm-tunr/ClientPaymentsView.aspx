<%@ Page Title=".:: View Client Payments ::." Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="ClientPaymentsView.aspx.cs" Inherits="admin_elaf_ClientPaymentsView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript" language="javascript">
    function SetConfirmation() {
        if (confirm("Are you sure! you want to chage status of the selected item?") == true)
            return true;
        else
            return false;
    }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table cellspacing="0" cellpadding="0" border="0" width="950px">
<tbody>
    <!-- Header -->
	<tr>
		<td class="innerContentHead">Client Payments >> View list  <asp:Label ID="lblClientName" runat="server" ></asp:Label>
        <div class="div-right margin-right">
              <a href="" id="lnkAddPayment" runat="server" title="Add payment to this client" >
              <img id="Imgdd1" runat="server" src="~/App_Themes/admin/images/modeyAdd.png" /></a>
        </div>
       </td>
	</tr>
    <!-- Seperator -->
	<tr>
		<td style="height:20px;">                        
            <asp:Label ID="lblError" CssClass="red-txt" runat="server"></asp:Label>
        </td>
	</tr>
    <!-- ContentPlaceHolder -->
	<tr>
		<td class="innerPlaceHolder" style="padding-top:10px;">					
<!-- put content here -->
<center>   

    <table width="98%" class="Grid">
        <tr>
            <td><b>Opening Balance:</b></td>
            <td><b>Total Invoices:</b></td>
            <td><b>Total Payments:</b></td>
            <td><b>Total Rest:</b></td>
            <td><b>Total New Balance:</b></td>
        </tr>
        <tr class="Grid_alertnative">
            <td width="20%" id="divOpeningbalance" runat="server"></td>
            <td width="20%" id="divTotalInvoices" runat="server"></td>
            <td width="20%" id="divTotalPayments" runat="server"></td>
            <td width="20%" id="divRemainder" runat="server"></td>
            <td id="divNewBalance" runat="server"></td>
        </tr>
    </table> 
    <br /><br /> 

<!-- search box -->
<table width="98%" cellspacing="0" cellpadding="8" border="0" class="Grid">
<tr align="center" valign="top" >
    <td>
    	 Active
    </td>
	<td colspan="2">
        Payment code
    </td>  
</tr>
<tr align="center" valign="top" class="Grid_alertnative">
	<td>
        <asp:RadioButtonList ID="rblActive" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Text="All" Value="" Selected="True"></asp:ListItem>
            <asp:ListItem Text="Active" Value="1"></asp:ListItem>
            <asp:ListItem Text="Not active" Value="0"></asp:ListItem>
        </asp:RadioButtonList>
    </td>
    <td>
       <asp:TextBox ID="txtName" runat="server"></asp:TextBox> 
       <asp:CompareValidator ID="CompareValidator1" ControlToValidate="txtName"   
                    runat="server" ErrorMessage="Please validate ClientPayment code as a number."
                    ToolTip="Please validate ClientPayment code as a number."  
                    Display="Dynamic" CssClass="red-txt" ValidationGroup="s" SetFocusOnError="true" 
                    Type="Integer" Operator="DataTypeCheck"><img id="Img3" alt="Notifier" runat="server"  src='~/App_Themes/admin/images/warning.png' align="absmiddle" /></asp:CompareValidator>
                       
    </td>
    <td>
    	<asp:Button ID="btnSearch" CssClass="g-btn" ValidationGroup="s" Width="100px" runat="server" 
            Text="Filter" onclick="btnSearch_Click" />
    </td>
  </tr>
</table>
<br /><br />
<!-- end search box -->

<asp:GridView ID="gvClientPayments" runat="server" AutoGenerateColumns="False" 
         Width="98%" CssClass="Grid" onrowcommand="gvClientPayments_RowCommand" 
         PageSize="100" 
         onpageindexchanging="gvClientPayments_PageIndexChanging" 
         onrowdeleting="gvClientPayments_RowDeleting" >
        <HeaderStyle CssClass="GridHead" />
        <AlternatingRowStyle CssClass="Grid_alertnative" />
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>                    
                        <%# string.Format("{0:F}  {1}", Eval("PaymentValue"), Eval("CurrencySymbol"))%>                    
                </ItemTemplate>
                <HeaderTemplate>                    
                        Value
                </HeaderTemplate>
            </asp:TemplateField>
            <asp:TemplateField ItemStyle-Width="90">
                <ItemTemplate>                    
                        <%# MinutesuaeConcrete.GetDateOnly(Eval("PaymentDate"), "dd/MM/yyyy")%>                    
                </ItemTemplate>
                <HeaderTemplate>                    
                        Date
                </HeaderTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>                    
                        <%# Eval("StoreName")%>                    
                </ItemTemplate>
                <HeaderTemplate>                    
                        Safe/Store
                </HeaderTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>                    
                        <%# Eval("ExchangeCompanyName")%>                    
                </ItemTemplate>
                <HeaderTemplate>                    
                        Exchange Co.
                </HeaderTemplate>
            </asp:TemplateField>
             <asp:TemplateField>
                <ItemTemplate>                    
                        <%# Eval("ReceiverName")%>                    
                </ItemTemplate>
                <HeaderTemplate>                    
                        Receiver
                </HeaderTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>                    
                        <%# Eval("Invoice_ID") != null ? Eval("Invoice_ID") : (Convert.ToDecimal(Eval("ReceiptRest")) > 0 ? string.Format("<a class='toolTip' title='Divide this amount on invoices.' href='{0}-{1}/{2}/viewsubinvoices.aspx'>{3:F} AED</a>", ResolveClientUrl("subinvoice"), Eval("Client_ID"), Eval("PaymentID"), Eval("ReceiptRest")) : "----")%>
                </ItemTemplate>
                <HeaderTemplate>                    
                        Invoice
                </HeaderTemplate>
            </asp:TemplateField>                    
            <asp:TemplateField HeaderText="Cancel" ItemStyle-Width="40">
                 <ItemTemplate>  
                     <asp:ImageButton ID="LinkButtonActive" CommandName="ActiveDeactive" OnClientClick="return SetConfirmation();" runat="server" ToolTip='<%# ((Eval("Active") != null && Convert.ToBoolean(Eval("Active")) == true) ?  "Click to deactive this item." : "Click to activate this item." ) %>'
                         CommandArgument='<%# Eval("PaymentID") + "." + ((Eval("Active") != null && Convert.ToBoolean(Eval("Active")) == true) ?  0 : 1 ) %>'  BorderStyle="None" Width="22"
                         ImageUrl='<%# "~/App_Themes/admin/images/" + ((Eval("Active") != null && Convert.ToBoolean(Eval("Active")) == true) ? "true-yes.gif" : "not_active.png" ) %>' />
                                               
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

