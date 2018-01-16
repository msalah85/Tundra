<%@ Page Title=".:: Manage Client Sub Payments ::." Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="ClientSubPaymentsView.aspx.cs" Inherits="admin_elaf_ClientSubPaymentsView" %>

<%--<%@ Register TagPrefix="cc11" Namespace="ComboImg" Assembly="ComboImg" %>--%>

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
		<td class="innerContentHead">Clients >> Manage Sub Payments 
            <asp:Label ID="lblClientName" runat="server" ></asp:Label>
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
<!-- add/edit box -->
<table width="98%" cellspacing="0" cellpadding="8" bgcolor="#fae8c5" border="0" class="Grid" id="divAddEdit" runat="server">
<tr valign="top">
     <td>Payment Receipt</td>
    <td>Invoice No.</td>
    <td>Amount</td>
</tr>
<tr align="center" valign="top" >
     <td>
  <%--   <cc11:HtmlSelectImage id="ddlPaymentReceipt" style="width:200px;" runat="server">
            <option value="calendar" selected="selected" title="../App_Themes/admin/images/warning.png">Calendar</option>
            <option value="shopping_cart" title="../App_Themes/admin/images/warning.png">Shopping Cart</option>
      </cc11:HtmlSelectImage>--%>

        <asp:DropDownList ID="ddlPaymentReceipt" Width="200" runat="server">
        </asp:DropDownList>            
        &nbsp;<asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator3" runat="server" 
		    ControlToValidate="ddlPaymentReceipt" ValidationGroup="s" InitialValue=""
            ErrorMessage="" ToolTip="Required."><img id="Ims6s6g3" alt="Notifier" runat="server"  src='~/App_Themes/admin/images/warning.png' align="absmiddle" /></asp:RequiredFieldValidator>
    </td>
     <td>
        <asp:DropDownList ID="ddlClientInvoices" Width="200" runat="server">
        </asp:DropDownList>            
        &nbsp;<asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator4" runat="server" 
		    ControlToValidate="ddlClientInvoices" ValidationGroup="s" InitialValue=""
            ErrorMessage="" ToolTip="Required."><img id="Imssag3" alt="Notifier" runat="server"  src='~/App_Themes/admin/images/warning.png' align="absmiddle" /></asp:RequiredFieldValidator>
    </td>
	<td>
        <asp:TextBox ID="txtAmount" Text="0.00" Width="130" ValidationGroup="s" runat="server" ></asp:TextBox>           
        <asp:CompareValidator ID="CompareValidator2" runat="server"
                  ControlToValidate="txtAmount" ErrorMessage="An amount must be &gt; 0.00" ToolTip="An amount value must be &gt; 0.00"
                  Operator="GreaterThan" Type="Double" Display="Dynamic" CssClass="red-txt" ValidationGroup="s" SetFocusOnError="true" 
                  ValueToCompare="0" ><img runat="server" id="Imgss2" src="~/App_Themes/admin/images/warning.png" align="absmiddle" /></asp:CompareValidator>
             
		        <asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator2" runat="server" 
		            ControlToValidate="txtAmount" ValidationGroup="s" ToolTip="Required."
                    ErrorMessage="Required."><img runat="server" id="Imsg2" src="~/App_Themes/admin/images/warning.png" align="absmiddle" /></asp:RequiredFieldValidator>
                 <asp:CompareValidator ID="CompareValidator1" ControlToValidate="txtAmount"   
                    runat="server" ErrorMessage="Please validate entered data as a money."  
                    ToolTip="Please validate entered data as a money."
                    Display="Dynamic" CssClass="red-txt" ValidationGroup="s" SetFocusOnError="true" 
                    Type="Double" Operator="DataTypeCheck"><img runat="server" id="Imsg3" src="~/App_Themes/admin/images/warning.png" align="absmiddle" /></asp:CompareValidator>
                  
       &nbsp;
       <asp:Button ID="btnAdd" Width="60" ValidationGroup="s" runat="server" Text="Save" 
                    CssClass="g-btn div-right" onclick="btnAdd_Click" />
    </td>     
</tr>
</table>
<!-- end add/edit box-->
<br /><br />
<!-- search box -->
<table width="98%" cellspacing="0" cellpadding="8" border="0" class="Grid">
<tr align="center" valign="top" >
    <td>
    	 Active
    </td>
	<td colspan="2">
        Sub Payment code
    </td>  
</tr>
<tr align="center" valign="top"  >
	<td>
        <asp:RadioButtonList ID="rblActive" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Text="All" Value=""></asp:ListItem>
            <asp:ListItem Text="Active" Value="1" Selected="True"></asp:ListItem>
            <asp:ListItem Text="Not active" Value="0"></asp:ListItem>
        </asp:RadioButtonList>
    </td>
    <td>
       <asp:TextBox ID="txtName" runat="server"></asp:TextBox> 
        
    </td>
    <td>
    	<asp:Button ID="btnSearch" CssClass="g-btn" Width="100px" runat="server" 
            Text="Filter" onclick="btnSearch_Click" />
        <asp:HiddenField ID="hfClientID" runat="server" />
    </td>
  </tr>
</table>
<br /><br />
<!-- end search box -->
<center>   
<asp:GridView ID="gvClients" runat="server" AutoGenerateColumns="False" 
         Width="98%" CssClass="Grid" onrowcommand="gvClients_RowCommand" 
         PageSize="100" 
         onpageindexchanging="gvClients_PageIndexChanging" 
         onrowdeleting="gvClients_RowDeleting" >
        <HeaderStyle CssClass="GridHead" />
        <AlternatingRowStyle CssClass="Grid_alertnative" />
        <Columns>
            <asp:TemplateField ItemStyle-Width="70">
                <ItemTemplate>                    
                        <asp:Image ToolTip='<%# Eval("MarkerNameEn") + "  -  " + Eval("TypeNameEn") %>' ID="divPic" runat="server" ImageUrl='<%# "~/Public/image/cars/_thumb/" + (Eval("main_picture") != null ? Eval("main_picture") : "no_photo.jpg" )%>' Width="60" />
                </ItemTemplate>
                <HeaderTemplate>                    
                        Sold Car
                </HeaderTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>                    
                        <%# Eval("InvoiceID")%>                    
                </ItemTemplate>
                <HeaderTemplate>                    
                        <a runat="server" id="linkInvoices" title="Go to client invoices list." href='<%# "client/" + hfClientID.Value + "/invoices/" + MinutesuaeConcrete.ToSeoUrl(Client_Name) + ".aspx"%>' >Invoice ID</a>                        
                </HeaderTemplate>
            </asp:TemplateField>
             <asp:TemplateField>
                <ItemTemplate>                    
                        <%# Eval("PaymentID")%>                    
                </ItemTemplate>
                <HeaderTemplate>
                        <a runat="server" id="linkPayments" title="Go to client payments list." href='<%# "client/" + hfClientID.Value + "/payments/" + MinutesuaeConcrete.ToSeoUrl(Client_Name) + ".aspx"%>' >Payment ID</a>
                </HeaderTemplate>
            </asp:TemplateField>
            <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <%# string.Format("{0:F}  AED", Eval("ClientInvoicesPaymentsValue"))%>                                        
                </ItemTemplate>
                <HeaderTemplate>                    
                        Amount                    
                </HeaderTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>                    
                        <%# MinutesuaeConcrete.GetDateOnly(Eval("RegisterDate"), "dd/MM/yyyy")%>                    
                </ItemTemplate>
                <HeaderTemplate>                    
                        Date
                </HeaderTemplate>
            </asp:TemplateField>
            <asp:TemplateField ItemStyle-Width="40" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>                    
                     <asp:ImageButton ID="LinkButtonActive" CommandName="ActiveDeactive" OnClientClick="return SetConfirmation();" runat="server" ToolTip='<%# ((Eval("Active") != null && Convert.ToBoolean(Eval("Active")) == true) ?  "Click to deactive this item." : "Click to activate this item." ) %>'
                         CommandArgument='<%# Eval("ClientInvoicesPaymentsID") + "." + ((Eval("Active") != null && Convert.ToBoolean(Eval("Active")) == true) ?  0 : 1 ) %>'  BorderStyle="None" Width="22"
                         ImageUrl='<%# "~/App_Themes/admin/images/" + ((Eval("Active") != null && Convert.ToBoolean(Eval("Active")) == true) ? "true-yes.gif" : "not_active.png" ) %>' />
                                                 
                </ItemTemplate>
                <HeaderTemplate>
                    Status
                </HeaderTemplate>
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

