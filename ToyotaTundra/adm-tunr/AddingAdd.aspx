﻿<%@ Page Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="AddingAdd.aspx.cs" Inherits="Admin_UAE_Al_Jaroof_AddingAddin" Title="Administration | Adding New Addin" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table cellspacing="0" cellpadding="0" border="0" width="98%">
<tbody>
	<tr>
		<td class="innerContentHead">Add new Addins  >>  News/Events</td>
	</tr>
</tbody>
</table>
<br />
    <asp:Label ID="lblError" runat="server" ForeColor="red"></asp:Label>
<br />

 <TABLE style="BORDER-COLLAPSE: collapse;" cellspacing="2" cellpadding="2" width="98%" class="Grid">
   <TBODY>
        <tr>
            <td   >Addin type <em class="red-txt">*</em></td>
            <td >
                <asp:DropDownList ID="ddlAddinType" runat="server">
                    <asp:ListItem Value=""></asp:ListItem>
                    <asp:ListItem Value="news" Text="News"></asp:ListItem>
                    <asp:ListItem Value="events" Text="Events"></asp:ListItem>
                </asp:DropDownList>            
             
                <asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator6" runat="server" 
		            ControlToValidate="ddlAddinType" ValidationGroup="s" InitialValue=""
                    ErrorMessage="Please select addin type."></asp:RequiredFieldValidator>
             </td>
        </tr>
        <tr>
            <td   >Language <em class="red-txt">*</em></td>
            <td >
                <asp:DropDownList ID="ddlLanguage" runat="server">
                </asp:DropDownList>            
             
                <asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator4" runat="server" 
		            ControlToValidate="ddlLanguage" ValidationGroup="s" InitialValue=""
                    ErrorMessage="Please select language."></asp:RequiredFieldValidator>
             </td>
        </tr>		    
        <tr>
            <td   >Active <em class="red-txt">*</em></td>
            <td >
                <asp:CheckBox ID="cbActive" Text="Yes active." runat="server" Checked="true" />
            </td>
        </tr>		    
	    <tr>
		    <td   >View at home <em class="red-txt">*</em></td>
		    <td >
		         <asp:CheckBox ID="cbViewHome" Text="Yes  View at home." runat="server" Checked="true" /></td>
	    </tr>       
	    <tr>
		    <td   >Priority <em class="red-txt">*</em> </td>
		    <td >
		         <asp:TextBox ID="txtPriority" ValidationGroup="s" Text="1" runat="server" Width="290px"></asp:TextBox> 

		        &nbsp;<asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator1" runat="server" 
		            ControlToValidate="txtPriority" ValidationGroup="s"
                    ErrorMessage="Please enter priority."></asp:RequiredFieldValidator>
                 <asp:CompareValidator ID="CompareValidator2" ControlToValidate="txtPriority"   
                    runat="server" ErrorMessage="Please validate priority as number."  
                    Display="Dynamic" CssClass="red-txt" ValidationGroup="s" SetFocusOnError="true" 
                    Type="Integer" Operator="DataTypeCheck"></asp:CompareValidator>
            
            </td>
	    </tr> 
	    <tr>
		    <td  width="26%" valign="top">Addin title <em class="red-txt">*</em></td>
		    <td  width="74%" valign="top">
                <asp:TextBox ID="txtName" ValidationGroup="s" runat="server" Width="290px"></asp:TextBox> 

		        &nbsp;<asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator2" runat="server" 
		            ControlToValidate="txtName" ValidationGroup="s"
                    ErrorMessage="Please enter english name."></asp:RequiredFieldValidator>

		    </td>
	    </tr>
        <tr>
		    <td    valign="top">Bref description <em class="red-txt">*</em> </td>
		    <td >
                <asp:TextBox ID="txtShortdesc" TextMode="MultiLine" runat="server" 
                    Height="100px" Width="400px"></asp:TextBox>

            <asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator3" runat="server" 
		            ControlToValidate="txtShortdesc" ValidationGroup="s"
                    ErrorMessage="Please enter short description."></asp:RequiredFieldValidator>
                
		    </td>
	    </tr>
	    <tr>
		    <td colspan="2" class="inner_3" >
                &nbsp;Details <em class="red-txt">*</em> </td>
	    </tr>
	    <tr>
		    <td colspan="2" class="inner_3" >
            <FCKeditorV2:FCKeditor ID="editorDetails" runat="server" BasePath="../fckeditor/" Height="400px">
                </FCKeditorV2:FCKeditor>
                &nbsp;</td>
	    </tr>
	    <tr>
		    <td colspan="2" class="inner_3" >
                <asp:Button ID="btnAdd" ValidationGroup="s" runat="server" Text="Add Addin" 
                    CssClass="g-btn" onclick="btnAdd_Click" />
		    </td>
	    </tr>
    </TBODY>
    </TABLE>

</asp:Content>

