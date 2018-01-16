<%@ Page Title=".:: Sale Car Invoice ::." Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="SaleCarTo.aspx.cs" Inherits="admin_elaf_SaleCarTo" ClientIDMode="Static" %>
<%@ MasterType VirtualPath="Admin.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
 </asp:Content>   
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table cellspacing="0" cellpadding="0" border="0" width="98%">
<tbody>
	<tr>
		<td class="innerContentHead">Car Invoices  >>  Add/Edit Invoice</td>
	</tr>
</tbody>
</table>
<br />
    <asp:Label ID="lblError" runat="server" ForeColor="red"></asp:Label>
<br />

<table width="800" border="0" cellpadding="11">

  <tr>
    <td>
<!-- begin 1 ------------->
<table width="100%" border="0" cellspacing="6">
  <tr align="center">
    <td width="77%">
        <img runat="server" src="~/App_Themes/site-en/images/small.png" width="80" style="float:left;" />
    </td>
    <td width="23%" rowspan="2">    	
        <asp:Image ID="imgMain" runat="server" ImageUrl="~/Public/image/cars/_thumb/" Width="200" />
    </td>
  </tr>
  <tr>
    <td align="left">
    	<!-- heer -->
        <b>TundraMk Cars</b>
        		<%--<table width="100%" border="0" >
  <tr>
    <td width="19%">Name: </td>
    <td width="81%"><strong>Ahmad Atewf ABd el moaty</strong></td>
  </tr>
  <tr>
    <td >Email: </td>
    <td><strong>darwr@safdhgwrgf.cim</strong></td>
  </tr>
  <tr>
    <td>الاسم: </td>
    <td><strong>احمد محمد عاطف السيد</strong></td>
  </tr>
  <tr>
    <td>الاسم: </td>
    <td><strong>احمد محمد عاطف السيد</strong></td>
  </tr>
</table>--%>

        
        <!-- heer -->
    </td>
    </tr>
</table>
            
            
<!-- end 1 ------------->  
    </td>
  </tr>
  <tr>
    <td>
<!-- begin 2 ------------->  
<table width="100%" border="0" cellpadding="4" style=" border: 1px solid #C5C5C5;">
  <tr align="left">
    <td class="bggb">Car Model: </td>
    <td>
    	<div id="divCarModel" runat="server"></div>
    </td>
  </tr>
  <tr align="left">
    <td class="bggb">Year: </td>
    <td>
    	<div id="divYear" runat="server"></div>
    </td>
  </tr>
   <tr align="left">
    <td class="bggb">Color: </td>
    <td>
    	<div id="divColor" runat="server"></div>
    </td>
  </tr>
   <tr align="left">
    <td class="bggb">Arrival Date: </td>
    <td>
    	<div id="divArrivalDate" runat="server"></div>
    </td>
  </tr>
   <tr align="left">
    <td class="bggb">Car No: </td>
    <td>
    	<div id="divCarNo" runat="server"></div>
    </td>
  </tr>
   <tr align="left">
    <td class="bggb">Lot No: </td>
    <td>
    	<div id="divLotNo" runat="server"></div>
    </td>
  </tr>
   <tr align="left">
    <td class="bggb">Chassis No: </td>
    <td>
    	<div id="divChassisNo" runat="server"></div>
    </td>
  </tr>
  <tr align="left" valign="top">
    <td class="bggb">Description: </td>
    <td>
    	<asp:TextBox ID="txtShortdesc" TextMode="MultiLine" runat="server" 
                    Height="90px" Width="400px"></asp:TextBox>

            <%--<asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator3" runat="server" 
		            ControlToValidate="txtShortdesc" ValidationGroup="s"
                    ErrorMessage="Please enter short description."></asp:RequiredFieldValidator>
                --%>
    </td>
  </tr>
</table>
<!-- end 2 ------------->      
    </td>
  </tr>
  <tr>
    <td>
<!-- begin 3 ------------->  
<table width="100%" border="0" cellpadding="4" style=" border: 1px solid #C5C5C5;"> 
   <tr align="left">
    <td class="bggb">Client: <div class="div-right"> 
    <a id="link" title=""><asp:Image runat="server" ImageUrl="../App_Themes/admin/images/note_edit.png" align="absmiddle" /></a></div></td>
    <td >
      <asp:DropDownList ID="ddlClients" name="ddlClients" runat="server">
                    </asp:DropDownList>            
             
                <asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator6" runat="server" 
		            ControlToValidate="ddlClients" ValidationGroup="s" InitialValue=""
                    ErrorMessage="" ToolTip="Please select client. You can enter client name to search within clients list."><img id="Img1" alt="Notifier" runat="server"  src='~/App_Themes/admin/images/warning.png' /></asp:RequiredFieldValidator>
    </td>
  </tr>
 
   <tr align="left" valign="top">
    <td class="bggb">Sale Price: </td>
    <td>
    	 <asp:TextBox ID="txtSalePrice" ValidationGroup="s" runat="server" ></asp:TextBox> &nbsp;
                <asp:DropDownList ID="ddlCurrency" runat="server" Width="90">
                </asp:DropDownList>            
                 &nbsp;
                 <asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator5" runat="server" 
		            ControlToValidate="txtSalePrice" ValidationGroup="s" ToolTip="Please enter sale price."
                    ErrorMessage=""><img id="Img2" alt="Notifier" runat="server"  src='~/App_Themes/admin/images/warning.png' /></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" ControlToValidate="txtSalePrice"   
                    runat="server" ErrorMessage="Please validate sale price as a money."
                    ToolTip="Please validate sale price as a money."  
                    Display="Dynamic" CssClass="red-txt" ValidationGroup="s" SetFocusOnError="true" 
                    Type="Double" Operator="DataTypeCheck"><img id="Img3" alt="Notifier" runat="server"  src='~/App_Themes/admin/images/warning.png' /></asp:CompareValidator>
                <asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator4" runat="server" 
		            ControlToValidate="ddlCurrency" ValidationGroup="s" InitialValue=""
                    ToolTip="Please select currency." 
                    ErrorMessage="Please select currency."><img id="Img4" alt="Notifier" runat="server"  src='~/App_Themes/admin/images/warning.png' /></asp:RequiredFieldValidator>
        <div style="color:#004f88;">
            <strong style="width:60px;float:left;color:#9abade;">Notice:</strong> Expenses of this car = <asp:Literal ID="hfExpensesVal" runat="server" ></asp:Literal> USD.
        </div>     

    </td>
  </tr>
  <tr align="left">
    <td  class="bggb">First Amount: </td>
    <td>
    	 <asp:TextBox ID="txtFirstAmount" ValidationGroup="s" Text="0" runat="server" Width="290px"></asp:TextBox> 
		        &nbsp;
                <asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator1" runat="server" 
		            ControlToValidate="txtFirstAmount" ValidationGroup="s"
                    ErrorMessage="Please enter first amount."><img id="Img5" alt="Notifier" runat="server"  src='~/App_Themes/admin/images/warning.png' /></asp:RequiredFieldValidator>
                 <asp:CompareValidator ID="CompareValidator2" ControlToValidate="txtFirstAmount"   
                    runat="server" ErrorMessage="Please validate first amount as a money."
                    ToolTip="Please validate first amount as a money."  
                    Display="Dynamic" CssClass="red-txt" ValidationGroup="s" SetFocusOnError="true" 
                    Type="Double" Operator="DataTypeCheck"><img id="Img6" alt="Notifier" runat="server"  src='~/App_Themes/admin/images/warning.png' /></asp:CompareValidator>
            
    </td>
  </tr>
  <tr align="left">
    <td class="bggb">Secret Code: </td>
    <td>
    	 <asp:TextBox ID="txtSecretCode" ValidationGroup="s" runat="server" Width="290px"></asp:TextBox> 

		        &nbsp;<asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator2" runat="server" 
		            ControlToValidate="txtSecretCode" ValidationGroup="s"
                    ErrorMessage="Please enter secret code." ToolTip="Please enter secret code."><img id="Img7" alt="Notifier" runat="server"  src='~/App_Themes/admin/images/warning.png' /></asp:RequiredFieldValidator>

    </td>
  </tr>
</table>
<!-- end 3 ------------->       
    </td>
  </tr>
  <tr align="center" valign="middle">
  	<td>
    <asp:Button ID="btnAdd" ValidationGroup="s" Width="200" runat="server" Text="Save/Print Invoice" 
                    CssClass="g-btn" onclick="btnAdd_Click" />
                <a id="A1" runat="server" style="width:200px" href="javascript:history.back();" class="g-btn">Cancel & Go Back</a>
		    
    </td>
  </tr>
</table>
    <asp:HiddenField ID="hfID" runat="server" />
    <asp:HiddenField ID="hfCarID" runat="server" />
   
<script type="text/javascript" >
//<![CDATA[
    $(document).ready(function () {
        $(function () {
            $("#<%= this.ddlClients.ClientID %>").ufd({ log: true });

            $("a#link").easyTooltip({
                tooltipId: "easyTooltip2",
                content: '<h4>Notice:</h4><p>You can enter client name to search within clients list.</p>'
            });

        });
    });

//]]>
</script>
</asp:Content>

