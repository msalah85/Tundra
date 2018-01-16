<%@ Page Title=".:: View Payments List::." Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="PaymentsView.aspx.cs" Inherits="admin_elaf_PaymentsView" %>



<%@ MasterType VirtualPath ="Admin.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript" language="javascript">
    function DeleteConfirmation() {
        if (confirm("Are you sure! you want to delete the selected item?") == true)
            return true;
        else
            return false;
    }

    function callPrint() {
        var printContent1 = document.getElementById('divResultToPrint');
        var printWindow = window.open('', '', 'left=0,top=0,width=1,height=1,toolbar=0,scrollbars=0,status=0');

        printWindow.document.write("<center><h1> Company Payments List </h1></center><br/><br/>" + printContent1.innerHTML);
        printWindow.document.close();
        printWindow.focus();
        printWindow.print();
        printWindow.close();
    }

    </script>
    <style type="text/css">
        input[type="text"]{width:190px;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table cellspacing="0" cellpadding="0" border="0" width="950px">
<tbody>
    <!-- Header -->
	<tr>
		<td class="innerContentHead">Payments to Company 
            <asp:Literal ID="ltlCoName" runat="server"></asp:Literal> >> View list<div class="div-right margin-right">
        <asp:HyperLink runat="server" ID="linkAddPayment" NavigateUrl="PaymentsAddEdit.aspx" ToolTip="Add New Payment" ImageUrl="~/App_Themes/admin/images/add_check.png"></asp:HyperLink></div></td>
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
<!-- search box -->
<table width="98%" cellspacing="0" cellpadding="8" border="0" class="Grid">
<tr align="center" valign="top" >
    <td>
    	 Payment Date
    </td>
	<td colspan="2">
        Invoice No.
    </td>  
</tr>
<tr align="center" valign="top" class="Grid_alertnative" >
	<td>
        <asp:TextBox ID="txtPaymentDateFrom" ValidationGroup="s" runat="server" ></asp:TextBox>
        <ajaxToolkit:TextBoxWatermarkExtender ID="txtExpenseDateFrom_TextBoxWsasaatermarkExtender" 
            runat="server" WatermarkText="Date from" Enabled="True" TargetControlID="txtPaymentDateFrom"></ajaxToolkit:TextBoxWatermarkExtender>
                                       
                <ajaxToolkit:CalendarExtender Format="MM/dd/yyyy" ID="CalendarExtendesdsr7" runat="server" Enabled="True" 
                TargetControlID="txtPaymentDateFrom"></ajaxToolkit:CalendarExtender>    

        <asp:CompareValidator ID="CompareValidator1" runat="server" ToolTip="Please validate entered data as a date."
                SetFocusOnError="true" CssClass="red-txt" ValidationGroup="s"  ControlToValidate="txtPaymentDateFrom"
                ErrorMessage="" Operator="DataTypeCheck" Type="Date">
                <img runat="server" src="~/App_Themes/admin/images/warning.png" /></asp:CompareValidator>

        <asp:TextBox ID="txtPaymentDateTo" ValidationGroup="s" runat="server" ></asp:TextBox>
        <ajaxToolkit:TextBoxWatermarkExtender ID="txtExpenseDateFrom_TextBoxWatermsasarkExtender" 
            runat="server" WatermarkText="Date to" Enabled="True" TargetControlID="txtPaymentDateTo"></ajaxToolkit:TextBoxWatermarkExtender>                          
                <ajaxToolkit:CalendarExtender Format="MM/dd/yyyy" ID="CalendarExtende55r7" runat="server" Enabled="True" 
                TargetControlID="txtPaymentDateTo"></ajaxToolkit:CalendarExtender> 
         
        <asp:CompareValidator ID="CompareValidator2" runat="server" ToolTip="Please validate entered data as a date."
                SetFocusOnError="true" CssClass="red-txt" ValidationGroup="s"  ControlToValidate="txtPaymentDateTo"
                ErrorMessage="" Operator="DataTypeCheck" Type="Date">
                <img id="Img1" runat="server" src="~/App_Themes/admin/images/warning.png" /></asp:CompareValidator>
   
    </td>
    <td>
       <asp:TextBox ID="txtCode" runat="server"></asp:TextBox>
       <asp:CompareValidator ID="CompareValidator3" runat="server" ToolTip="Please validate invoice code as a number."
                SetFocusOnError="true" CssClass="red-txt" ValidationGroup="s"  ControlToValidate="txtCode"
                ErrorMessage="" Operator="DataTypeCheck" Type="Integer">
                <img id="I65mg2" runat="server" src="~/App_Themes/admin/images/warning.png" /></asp:CompareValidator>
    
        
    </td>
    <td>
    	<asp:Button ID="btnSearch" ValidationGroup="s" CssClass="g-btn" Width="100px" runat="server" 
            Text="Filter" onclick="btnSearch_Click" />
    </td>
  </tr>
</table>
<br /><br />
<!-- end search box -->
  
<center>
   <input runat="server" visible="false" id="Button2" class="g-btn" type="button" value="Print" onclick="callPrint();" />       <br />
</center>  
<center id="divResultToPrint"> 

    <table width="98%" class="Grid">
        <tr>
            <td><b>Opening Balance:</b></td>
            <td><b>Total Expense:</b></td>
            <td><b>Total Payments:</b></td>
            <td><b>Remaining:</b></td>
        </tr>
        <tr class="Grid_alertnative">
            <td width="25%" id="divOpeningbalance" runat="server"></td>
            <td width="25%" id="divTotalExpense" runat="server"></td>
            <td width="25%" id="divTotalPayments" runat="server"></td>
            <td id="divRemainder" runat="server"></td>
        </tr>
    </table> 
    <br /><br /> 
<asp:GridView ID="gvPayments" runat="server" AutoGenerateColumns="False" 
         Width="98%" CssClass="Grid" onrowcommand="gvPayments_RowCommand" 
         PageSize="150" 
         onpageindexchanging="gvPayments_PageIndexChanging" 
         onrowdeleting="gvPayments_RowDeleting" >
        <HeaderStyle CssClass="GridHead" />
        <AlternatingRowStyle CssClass="Grid_alertnative" />
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>                    
                        <%# Eval("InvoiceCode")%>                    
                </ItemTemplate>
                <HeaderTemplate>                    
                        Invoice No.
                </HeaderTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>                    
                        <%# MinutesuaeConcrete.GetDateOnly(Eval("PaymentDate"))%>                    
                </ItemTemplate>
                <HeaderTemplate>                    
                        Payment Date
                </HeaderTemplate>
            </asp:TemplateField>
             <asp:TemplateField>
                <ItemTemplate>                    
                        <%# string.Format("{0:F} {1}", Eval("ExpenseValue"), Eval("CurrencySymbol"))%>                    
                </ItemTemplate>
                <HeaderTemplate>                    
                        Value
                </HeaderTemplate>
            </asp:TemplateField>
            <asp:TemplateField ItemStyle-Width="100" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <%# Eval("CompanyName")%>                    
                </ItemTemplate>
                <HeaderTemplate>                    
                        Company/Buyer
                </HeaderTemplate>
            </asp:TemplateField>  
            <asp:TemplateField ItemStyle-Width="100" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <%# Eval("ExchangeCompanyName")%>                    
                </ItemTemplate>
                <HeaderTemplate>                    
                        Exchange Co.
                </HeaderTemplate>
            </asp:TemplateField>      
            <asp:TemplateField ItemStyle-Width="40">
                <ItemTemplate>                    
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "payment-" + Eval("ExpenseID") + "/edit.aspx" %>' Width="23" BorderStyle="None"
                            ToolTip="Edit" ImageUrl="~/App_Themes/admin/images/document_edit.png" />
                    
                </ItemTemplate>
                <HeaderTemplate>
                    Edit
                </HeaderTemplate>
            </asp:TemplateField>                      
            <asp:TemplateField HeaderText="Delete" ItemStyle-Width="40">
                 <ItemTemplate>                  
                     <asp:ImageButton ID="LinkButton1"
                         CommandArgument='<%# Eval("ExpenseID") %>'  Width="23" BorderStyle="None"
                         CommandName="Delete" OnClientClick="return DeleteConfirmation();" runat="server" ImageUrl="~/App_Themes/admin/images/delete.png" />
                         
                     
                 </ItemTemplate>
               </asp:TemplateField>                
        </Columns>
        <PagerSettings Mode="NumericFirstLast" />
    </asp:GridView>
<br clear="all" />
</center>    
<center><br />
   <input runat="server" visible="false" id="Button1" class="g-btn" type="button" value="Print" onclick="callPrint()" />       
</center>  

<!-- put content here -->
				</td>
				</tr>
            </tbody>
        </table>
</asp:Content>

