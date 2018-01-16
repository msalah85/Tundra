<%@ Page Title="Safe/Store View Expenses" Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="StoreExpensesView.aspx.cs" Inherits="admin_elaf_StoreExpensesView" ViewStateMode="Disabled" %>



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

        printWindow.document.write("<center><h1> Car Expenses List </h1></center><br/><br/>" + printContent1.innerHTML);
        printWindow.document.close();
        printWindow.focus();
        printWindow.print();
        printWindow.close();
    }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table cellspacing="0" cellpadding="0" border="0" width="950px">
<tbody>
    <!-- Header -->
	<tr>
		<td class="innerContentHead">Safe/Store <asp:Literal ID="lblStore" runat="server" /> >> View All Outgoing Values<div class="div-right margin-right">
        <asp:HyperLink runat="server" ID="lnkAddADEExpense" NavigateUrl="StoreExpensesAdd.aspx" ToolTip="Add General Expenses" ImageUrl="~/App_Themes/admin/images/addaud.png"></asp:HyperLink></div></td>
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
    	 Outgoing Type
    </td>
	<td colspan="2">
        Date
    </td>
</tr>
<tr align="center" valign="top" class="Grid_alertnative" >
	<td>
        <asp:RadioButtonList ID="rblType" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Text="All" Value=""></asp:ListItem>
            <asp:ListItem Text="Safe/Store Expenses" Value="General" Selected="True"></asp:ListItem>
            <asp:ListItem Text="Companies Only" Value="Cars"></asp:ListItem>
        </asp:RadioButtonList>
    </td>
    <td>
        <asp:TextBox ID="txtExpenseDateFrom" ValidationGroup="s" runat="server" Width="150"></asp:TextBox>                           
        <ajaxToolkit:TextBoxWatermarkExtender ID="txtExpenseDateFrom_TextBoxWatermarkExtender" WatermarkCssClass="watermark" 
            runat="server" WatermarkText="Date from" Enabled="True" TargetControlID="txtExpenseDateFrom">
        </ajaxToolkit:TextBoxWatermarkExtender>
                <ajaxToolkit:CalendarExtender Format="MM/dd/yyyy" ID="CalendarExtender7" runat="server" Enabled="True" 
                TargetControlID="txtExpenseDateFrom"></ajaxToolkit:CalendarExtender>    

        <asp:CompareValidator ID="CompareValidator1" runat="server" ToolTip="Please validate entered data as a date."
                SetFocusOnError="true" CssClass="red-txt" ValidationGroup="s"  ControlToValidate="txtExpenseDateFrom"
                ErrorMessage="" Operator="DataTypeCheck" Type="Date">
                <img id="Img1" runat="server" src="~/App_Themes/admin/images/warning.png" /></asp:CompareValidator>

        <asp:TextBox ID="txtExpenseDateTo" ValidationGroup="s" runat="server" Width="150"></asp:TextBox> 
        <ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" WatermarkCssClass="watermark"  
            runat="server" WatermarkText="Date to" Enabled="True" TargetControlID="txtExpenseDateTo"></ajaxToolkit:TextBoxWatermarkExtender>
                                      
                <ajaxToolkit:CalendarExtender Format="MM/dd/yyyy" ID="CalendarExtende55r7" runat="server" Enabled="True" 
                TargetControlID="txtExpenseDateTo"></ajaxToolkit:CalendarExtender> 
         
        <asp:CompareValidator ID="CompareValidator2" runat="server" ToolTip="Please validate entered data as a date."
                SetFocusOnError="true" CssClass="red-txt" ValidationGroup="s"  ControlToValidate="txtExpenseDateTo"
                ErrorMessage="" Operator="DataTypeCheck" Type="Date">
                <img id="Img2" runat="server" src="~/App_Themes/admin/images/warning.png" /></asp:CompareValidator>
   
        
    </td>
    <td width="80">
    	<asp:Button ID="btnSearch" ValidationGroup="s" CssClass="g-btn" Width="100px" runat="server" 
            Text="Filter" onclick="btnSearch_Click" />
    </td>
  </tr>
</table>
<br /><br />
<!-- end search box -->

<center>
   <input runat="server" visible="false" id="Button2" class="g-btn" type="button" value="Print" onclick="callPrint();" />       
</center>  
<center id="divResultToPrint">   
<asp:GridView ID="gvPayments" runat="server" AutoGenerateColumns="False" EnableViewState="true"
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
                        <%# MinutesuaeConcrete.GetDateOnly(Eval("PaymentDate"), "dd/MM/yy")%>                    
                </ItemTemplate>
                <HeaderTemplate>                    
                        Date
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
                    <%# Eval("ExpenseTypeName")%>                    
                </ItemTemplate>
                <HeaderTemplate>                    
                        Expense Type
                </HeaderTemplate>
            </asp:TemplateField>
            <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Label ID="lblCoName" runat="server" ToolTip='<%# Eval("CompanyType")%>' Text='<%# Eval("CompanyName") != null ? Eval("CompanyName") : Eval("CompanyType") %>'></asp:Label>
                </ItemTemplate>
                <HeaderTemplate>                    
                        Company
                </HeaderTemplate>
            </asp:TemplateField>
            <%--<asp:TemplateField ItemStyle-Width="40">
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
               </asp:TemplateField>      --%>          
        </Columns>
        <PagerSettings Mode="NumericFirstLast" />
    </asp:GridView>

<table width="98%" class="Grid" id="tblTotalDollar" runat="server" visible="false">
        <tr>
            <td width="30%"><b>Expenses ($): </b></td>
            <td id="divTotalDollar" runat="server"></td>
        </tr>
    </table>
<br clear="all" />
<asp:GridView ID="gvExpensesDirham" runat="server" AutoGenerateColumns="False" EnableViewState="true"
         Width="98%" CssClass="Grid" onrowcommand="gvExpensesDirham_RowCommand"
         onpageindexchanging="gvExpensesDirham_PageIndexChanging" 
         onrowdeleting="gvExpensesDirham_RowDeleting" >
        <HeaderStyle CssClass="GridHead" />
        <AlternatingRowStyle CssClass="Grid_alertnative" />
        <Columns>
            <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>                    
                        <%# Eval("InvoiceCode")%>                    
                </ItemTemplate>
                <HeaderTemplate>                    
                        Invoice No.
                </HeaderTemplate>
            </asp:TemplateField>
            <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>                    
                        <%# MinutesuaeConcrete.GetDateOnly(Eval("PaymentDate"), "dd/MM/yy")%>                    
                </ItemTemplate>
                <HeaderTemplate>                    
                        Date
                </HeaderTemplate>
            </asp:TemplateField>
             <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>                    
                        <%# string.Format("{0:F} {1}", Eval("ExpenseValue"), Eval("CurrencySymbol"))%>                    
                </ItemTemplate>
                <HeaderTemplate>                    
                        Value
                </HeaderTemplate>
            </asp:TemplateField>
            <asp:TemplateField ItemStyle-Width="100" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <%# Eval("ExpenseTypeName")%>                    
                </ItemTemplate>
                <HeaderTemplate>                    
                        Expense Type
                </HeaderTemplate>
            </asp:TemplateField>
            <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Label ID="lblCoName" runat="server" ToolTip='<%# Eval("CompanyType")%>' Text='<%# Eval("CompanyName") != null ? Eval("CompanyName") : Eval("CompanyType") %>'></asp:Label>
                </ItemTemplate>
                <HeaderTemplate>                    
                        Company
                </HeaderTemplate>
            </asp:TemplateField>
            <%--<asp:TemplateField ItemStyle-Width="40">
                <ItemTemplate>                    
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "editexpense-" + Eval("ExpenseID") + "/" + Eval("Currency_ID") + ".aspx" %>' Width="23" BorderStyle="None"
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
               </asp:TemplateField>--%>                
        </Columns>
        <PagerSettings Mode="NumericFirstLast" />
    </asp:GridView> 

<table width="98%" class="Grid" id="tblTotalDirham" runat="server" visible="false">
        <tr>
            <td width="30%"><b>Expenses (AED): </b></td>
            <td id="divTotalDirham" runat="server"></td>
        </tr>
    </table>
<br />
<table width="98%" class="GridHead" id="tblTotalAllAll" runat="server" visible="false">
        <tr>
            <td width="30%"><b>All Expenses (in AED): </b></td>
            <td id="divTotalAll" runat="server"></td>
        </tr>
    </table>
<br clear="all" />
<br clear="all" />
</center>    
<center>
   <input runat="server" visible="false" id="Button1" class="g-btn" type="button" value="Print" onclick="callPrint()" />       
</center>  

<asp:HiddenField ID="hndGridViewPrintContent" runat="server" />

<script type="text/javascript">
    function PrintGridView() {
        printWindow = window.open("", "mywindow", "location=0,status=0,scrollbars=1,resizable=1");
        var strContent = "<html><head>";
        strContent = strContent + "<title" + ">Print Preview</title>";
        strContent = strContent + "<link href=\"App_Themes/Default/Default.css\" type=\"text/css\" rel=\"stylesheet\" />";
        strContent = strContent + "</head><body>";
        strContent = strContent + "<div style='width:100%;text-align:right;'>";
        strContent = strContent + "<input type='button' id='btnPrint' value='Print' style='width:100px' onclick='window.print()' />";
        strContent = strContent + "<input type='button' id='btnCancel' value='Cancel' style='width:100px' onclick='window.close()' />";
        strContent = strContent + "</div>";
        // Removing/Invisibiling Columns
        strContent = strContent + "<div style='width:100%;'>";
        var GridViewContent = document.getElementById('<%= hndGridViewPrintContent.ClientID %>').value;
        //Assigning a Temproary Class name, as ColVisible will be replaced by next line
        GridViewContent = GridViewContent.replace(/ColInVisible/g, "ColIVisible");
        GridViewContent = GridViewContent.replace(/ColVisible/g, "ColInVisible");
        GridViewContent = GridViewContent.replace(/ColIVisible/g, "ColVisible");
        strContent = strContent + GridViewContent;
        strContent = strContent + "</div>";
        strContent = strContent + "</body>";
        printWindow.document.write(strContent);
        printWindow.document.close();
        printWindow.focus();
    }
</script> 
<!-- put content here -->
				</td>
				</tr>
            </tbody>
        </table>

</asp:Content>

