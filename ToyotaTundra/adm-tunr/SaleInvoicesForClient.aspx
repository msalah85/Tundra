<%@ Page Title=".:: View Invoices For Client ::." Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="SaleInvoicesForClient.aspx.cs" Inherits="admin_elaf_SaleInvoicesForClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript" language="javascript">
    function DeleteConfirmation() {
        if (confirm("Are you sure! you want to delete the selected item?") == true)
            return true;
        else
            return false;
    }
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
		<td class="innerContentHead">Invoices >> View list  
            <asp:Label ID="lblClientName" runat="server" ></asp:Label>
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
        Invoice code
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
                    runat="server" ErrorMessage="Please validate invoice code as a number."
                    ToolTip="Please validate invoice code as a number."  
                    Display="Dynamic" CssClass="red-txt" ValidationGroup="s" SetFocusOnError="true" 
                    Type="Integer" Operator="DataTypeCheck"><img id="Img3" alt="Notifier" runat="server"  src='~/App_Themes/admin/images/warning.png' /></asp:CompareValidator>
                       
    </td>
    <td>
    	<asp:Button ID="btnSearch" CssClass="g-btn" ValidationGroup="s" Width="100px" runat="server" 
            Text="Filter" onclick="btnSearch_Click" />
    </td>
  </tr>
</table>
<br /><br />

<!-- end search box -->
<asp:GridView ID="gvInvoices" runat="server" AutoGenerateColumns="False" 
         Width="98%" CssClass="Grid" onrowcommand="gvInvoices_RowCommand" 
         PageSize="100" 
         onpageindexchanging="gvInvoices_PageIndexChanging" 
         onrowdeleting="gvInvoices_RowDeleting" >
        <HeaderStyle CssClass="GridHead" />
        <AlternatingRowStyle CssClass="Grid_alertnative" />
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>                    
                    <table border="0" cellpadding="3" cellspacing="0">
                        <tr>
                            <td><asp:Image ToolTip='<%# Eval("MarkerNameEn") + "  -  " + Eval("TypeNameEn") %>' ID="divPic" runat="server" ImageUrl='<%# "~/Public/image/cars/_thumb/" + (Eval("main_picture") != null ? Eval("main_picture") : "no_photo.jpg" )%>' Width="60" /></td>
                            <td>
                                <%# Eval("MarkerNameEn") %><br /><%# Eval("TypeNameEn") %><br /><%# Eval("YearNameEn")%> &nbsp; <%# (Eval("TotalSubPaymentsForThis") != null && Convert.ToDecimal(Eval("TotalSubPaymentsForThis")) > 0) ? "<a title='Show sub payments under this invoice.' href= '../../../subinvoice-" + Eval("Client_ID") + "/viewsubinvoices.aspx' ><img alt='Show sub payments under this invoice.' src='../../../../App_Themes/admin/images/viewplusSub.png' width='22' align='absmiddle' /></a>" : ""%>                   
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <HeaderTemplate>                    
                        Car Type
                </HeaderTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>                    
                        <%# Eval("StoreName")%>                    
                </ItemTemplate>
                <HeaderTemplate>                    
                        Store/Safe
                </HeaderTemplate>
            </asp:TemplateField>
             <asp:TemplateField>
                <ItemTemplate>                    
                        <%# string.Format("{0:F}  {1}", Eval("FirstAmount"), Eval("CurrencySymbol"))%>                    
                </ItemTemplate>
                <HeaderTemplate>                    
                        First Amount
                </HeaderTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                        <%# string.Format("{0:F}  {1}", Eval("SalePrice"), Eval("CurrencySymbol"))%>                                                                
                </ItemTemplate>
                <HeaderTemplate>                    
                       Sale Price
                </HeaderTemplate>
            </asp:TemplateField> 
            <asp:TemplateField>
                <ItemTemplate>                    
                        <%# ((InvoiceRemainder(Eval("SalePrice"), Eval("FirstAmount"), Eval("TotalPaymentsForThis"), Eval("TotalSubPaymentsForThis")) > 0) ? string.Format("<a title='Payment for this invoice.' href='../../../client-{0}/{1}/addpayments.aspx'> {2:F}  {3}</a>", Eval("Client_ID"), Eval("InvoiceID"), (InvoiceRemainder(Eval("SalePrice"), Eval("FirstAmount"), Eval("TotalPaymentsForThis"), Eval("TotalSubPaymentsForThis"))), Eval("CurrencySymbol")) : string.Format("{0:F}  {1}", (InvoiceRemainder(Eval("SalePrice"), Eval("FirstAmount"), Eval("TotalPaymentsForThis"), Eval("TotalSubPaymentsForThis"))), Eval("CurrencySymbol")))%>                                            
                </ItemTemplate>
                <HeaderTemplate>                    
                        The Rest
                </HeaderTemplate>
            </asp:TemplateField> 
            <asp:TemplateField ItemStyle-Width="40">
                <ItemTemplate>                    
                        <a runat="server" id="divLinkPrint" href='<%# "invoice/" + Eval("InvoiceID") + "/print.aspx"%>' title="Print"><%# Eval("InvoiceID")%></a>
                </ItemTemplate>
                <HeaderTemplate>                    
                        Print
                </HeaderTemplate>
            </asp:TemplateField>                    
            <asp:TemplateField HeaderText="Status" ItemStyle-Width="40">
                 <ItemTemplate>                  
                     <%--<asp:ImageButton ID="LinkButton1"
                         CommandArgument='<%# Eval("InvoiceID") %>'  Width="23" BorderStyle="None"
                         CommandName="Delete" OnClientClick="return DeleteConfirmation();" runat="server" ImageUrl="~/App_Themes/admin/images/delete.png" />--%>
                     
                     <asp:ImageButton ID="LinkButtonActive" CommandName="ActiveDeactive" OnClientClick="return SetConfirmation();" runat="server" ToolTip='<%# ((Eval("Active") != null && Convert.ToBoolean(Eval("Active")) == true) ?  "Click to deactive this item." : "Click to activate this item." ) %>'
                         CommandArgument='<%# Eval("InvoiceID") + "." + ((Eval("Active") != null && Convert.ToBoolean(Eval("Active")) == true) ?  0 : 1 ) %>'  BorderStyle="None" Width="22"
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

