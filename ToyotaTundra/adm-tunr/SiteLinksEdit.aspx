<%@ Page Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" 
    CodeFile="SiteLinksEdit.aspx.cs" ValidateRequest="false"
    Inherits="EditSiteLinks" Title=".:: Edit Page Content ::." %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" language="javascript">
           function AddConfirmation()
            {
                if (confirm("Are you sure! to save page content?") == true)
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
					<td class="innerContentHead">Update Page Content</td>
				</tr>
                <!-- Seperator -->
				<tr>
					<td style="height:15px;"></td>
				</tr>
                <!-- ContentPlaceHolder -->
				<tr>
					<td class="innerPlaceHolder" style="padding-top:10px;">
	<center>				
					                <!-- put content here -->
<asp:Label ID="lblError" CssClass="red-txt" runat="server"></asp:Label>
<table width="98%" cellspacing="0" cellpadding="8" border="0" class="Grid">
  <tr align="left" valign="top">
    <td width="25%">
    	 Page title <span class="red-txt">*</span>
    </td>
    <td>
    	<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ControlToValidate="txtName" SetFocusOnError="true"  ErrorMessage="Please enter Page title." Display="Dynamic" CssClass="red-txt" ValidationGroup="s" ID="RequiredFieldValidator1" runat="server" ></asp:RequiredFieldValidator>
    </td>
  </tr>            
  <tr align="left" valign="top" >
    <td>
    	 Language <span class="red-txt">*</span>
    </td>
    <td>
        <asp:DropDownList ID="ddlLanguage" runat="server">
        </asp:DropDownList>   &nbsp;     
        <asp:RequiredFieldValidator ControlToValidate="ddlLanguage" SetFocusOnError="True"  
            ErrorMessage="Please select Language." Display="Dynamic" CssClass="red-txt" 
            ValidationGroup="s" ID="RequiredFieldValidator3" InitialValue="" runat="server" ></asp:RequiredFieldValidator>
    </td>
  </tr>  
   <tr align="left" valign="top" >
    <td>
    	 Page active <span class="red-txt">*</span>
    </td>
    <td>
        <asp:CheckBox ID="cbActive" Text="yes, you can check this option to active page content in the site." Checked="true" runat="server" />
    
    </td>
  </tr>  
  <tr align="left" valign="top" >
    <td>
    	 Priority <span class="red-txt">*</span>
    </td>
    <td>
    	<asp:TextBox ID="txtPriority" runat="server" Text="1"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ControlToValidate="txtPriority" SetFocusOnError="True"  ErrorMessage="Please enter Priority." Display="Dynamic" CssClass="red-txt" ValidationGroup="s" ID="RequiredFieldValidator6" runat="server" ></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator2" ControlToValidate="txtPriority"   
            runat="server" ErrorMessage="Please verify Priority as a number."  
            Display="Dynamic" CssClass="red-txt" ValidationGroup="s" SetFocusOnError="True" 
            Type="Integer" Operator="DataTypeCheck"></asp:CompareValidator>
    </td>
  </tr>
  <tr align="left" valign="top" >
    <td colspan="2">
    	 Page details <span class="red-txt">*</span>
    </td></tr>
   <tr align="left" valign="top" >   
    <td colspan="2">
        <FCKeditorV2:FCKeditor ID="editorLinkDetails" runat="server" Height="400" BasePath="../../fckeditor/" />
    </td>
  </tr>

  <tr align="center" valign="top" >
     <td colspan="2">
        <asp:Button ID="btnSubmit" CssClass="g-btn" ValidationGroup="s" runat="server" Text="Update page content"  
            onclick="btnSubmit_Click" />
            <a id="A1" runat="server" style="width:100px" href="SiteLinksView.aspx" class="g-btn">Cancel updating</a>
    </td>
  </tr>

</table>

    </center><!-- put content here -->
					
					</td>
				</tr>
            </tbody>
        </table>
    <asp:HiddenField ID="hfID" runat="server" />
</asp:Content>

