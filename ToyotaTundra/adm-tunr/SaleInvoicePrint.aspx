<%@ Page Title="" Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="SaleInvoicePrint.aspx.cs" Inherits="admin_elaf_SaleInvoicePrint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table cellspacing="0" cellpadding="0" border="0" width="98%">
<tbody>
	<tr>
		<td class="innerContentHead">Print Invoice</td>
	</tr>
</tbody>
</table>
<br />
<br />
<div class="box-container" id="divContenttoPrint">
<table width="800" border="0" cellpadding="11">
<tr align="center">
    <td height="52" colspan="2" bgcolor="#e9e9e9" style="padding:4px 0;">
    	<h1 style="margin:0;">
            TundraMk Cars Sales Bill
        </h1>
    </td>
   
  </tr>
  <tr>
    <td>
<!-- begin 1 ------------->
<table width="100%" border="0" cellspacing="6">
  <tr align="center">
    <td width="77%">
        <asp:Image id="Img1" runat="server" ImageUrl="~/App_Themes/site-en/images/small.png" Width="80" style="float:left;" />
    </td>
    <td width="23%" rowspan="2">    	
        <asp:Image ID="imgMain" runat="server" ImageUrl="~/Public/image/cars/_thumb/" Width="200" />
    </td>
  </tr>
  <tr>
    <td align="left">
    	<!-- heer -->
<table width="100%" border="0" >
  <tr>
    <td colspan="2"><strong id="divName" runat="server"></strong></td>
  </tr>
  <tr>
    <td  width="19%">Website </td>
    <td width="81%"><strong id="divWebsite" runat="server"></strong></td>
  </tr>
  <tr>
    <td>Email </td>
    <td><strong id="divEmail" runat="server"></strong></td>
  </tr>
  <tr>
    <td>Phone </td>
    <td><strong id="divPhone" runat="server"></strong></td>
  </tr>
  <tr>
    <td>Fax </td>
    <td><strong id="divFax" runat="server"></strong></td>
  </tr>
  <tr>
    <td colspan="2"><strong style="color:Red;" id="divBillStatus" runat="server"></strong></td>
  </tr>
</table>

        
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
    <td class="bggb" width="40%">Car Model: </td>
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
    	<div id="divDescription" runat="server"></div>
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
    <td class="bggb" width="40%">Client </td>
    <td >
      <div id="divClient" runat="server"></div>
    </td>
  </tr>
 
   <tr align="left">
    <td class="bggb">Sale Price </td>
    <td>
    	 <div id="divPrice" runat="server"></div>    
    </td>
  </tr>
  <tr align="left">
    <td  class="bggb">First Amount: </td>
    <td>
    	<div id="divFirst" runat="server"></div>   
    </td>
  </tr>
</table>
<!-- end 3 ------------->       
    </td>
  </tr>
</table>
<br />
</div>
<table width="100%">
  <tr align="center" valign="middle">
  	<td>
        <input id="Button1" class="g-btn" type="button" value="Print Invoice" onclick="callPrint();" />      
        <a id="lnkGoList" runat="server" style="width:200px" href="javascript:history.back();" class="g-btn">Client Invoices</a>
		    
    </td>
  </tr>
</table>
<br />
<script type="text/javascript" language="javascript">
    function callPrint() {
        var printContent1 = document.getElementById('divContenttoPrint');
        var printWindow = window.open('', '', 'left=0,top=0,width=1,height=1,toolbar=0,scrollbars=0,status=0');

        printWindow.document.write(printContent1.innerHTML);
        printWindow.document.close();
        printWindow.focus();
        printWindow.print();
        printWindow.close();
    }

    </script>
</asp:Content>

