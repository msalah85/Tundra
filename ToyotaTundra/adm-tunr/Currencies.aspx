<%@ Page Title=".:: Currencies Manager ::." Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="Currencies.aspx.cs" Inherits="admin_elaf_Currencies" %>

<%@ MasterType VirtualPath ="Admin.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript" language="javascript">
    function DeleteConfirmation() {
        if (confirm("Are you sure ! you want to delete the selected ?") == true)
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
					<td class="innerContentHead">Currencies List<div class="div-right margin-right">
            <asp:ImageButton runat="server" ID="btnAddNew" ToolTip="Add new" 
                ImageUrl="../App_Themes/admin/images/add-new.png" Width="20" Height="20" BorderStyle="None" BorderWidth="0" 
                onclick="btnAddNew_Click" /></div></td>
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
               
<table width="98%" cellspacing="0" cellpadding="8" border="0" bgcolor="#fae8c5" class="Grid" id="divAddEdit" runat="server" visible="false">
  <tr align="right" valign="top">
    <td width="19%">
    	 Currency <span class="red-txt">*</span><asp:HiddenField ID="hfId" runat="server" />
    </td>
    <td width="81%">
    	<asp:TextBox ID="txtCurrency" runat="server" ValidationGroup="s"></asp:TextBox>
        &nbsp; <asp:RequiredFieldValidator ControlToValidate="txtCurrency" SetFocusOnError="true"  
        ErrorMessage="<img src='../App_Themes/admin/images/warning.png' /> *" Display="Dynamic" CssClass="red-txt" ValidationGroup="s" 
        ID="RequiredFieldValidator1" runat="server" ></asp:RequiredFieldValidator>
    
    </td>
  </tr>
   <tr align="right" valign="top" >
    <td>
    	 Currency Symbol 
    </td>
    <td>
        <asp:TextBox ID="txtCurrencySymbol" runat="server" ValidationGroup="s"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator3" runat="server" 
		            ControlToValidate="txtCurrencySymbol" ValidationGroup="s" 
                    ErrorMessage="<img src='../App_Themes/admin/images/warning.png' /> *"></asp:RequiredFieldValidator>

    </td>
  </tr>
   <tr align="right" valign="top" >
    <td>
    	 Exchange Rate 
    </td>
    <td>
    	<asp:TextBox ID="txtExchangeRate" Text="1.00" ValidationGroup="s" runat="server"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator2" runat="server" 
		            ControlToValidate="txtExchangeRate" ValidationGroup="s" 
                    ErrorMessage="<img src='../App_Themes/admin/images/warning.png' /> *"></asp:RequiredFieldValidator>
        <asp:CompareValidator  SetFocusOnError="true" CssClass="red-txt" 
            ID="RequiredFieldValidator4" runat="server" 
		            ControlToValidate="txtExchangeRate" ValidationGroup="s" Operator="DataTypeCheck"
                    ErrorMessage="Validate entered data as a money." Type="Double"></asp:CompareValidator>
    
        
    </td>
  </tr>

  <tr align="center" valign="top" >
     <td >
	 </td>
    <td>    	 
        <asp:Button ID="btnSubmit" CssClass="g-btn-save" Width="100px" ValidationGroup="s" runat="server" Text="Save" 
            onclick="btnSubmit_Click" />
        <asp:Button ID="btnCancel" CssClass="g-btn-del" Width="100px" runat="server" Text="Cancel" 
            onclick="btnCancel_Click" />
       &nbsp;<asp:Label ID="lblError" CssClass="red-txt" runat="server"></asp:Label>
    </td>
  </tr>

</table>
</center>
    <br><br>            
					                <!-- put content here onrowdatabound="gvCurrencies_RowDataBound" -->
<center>
<asp:GridView ID="gvCurrencies" runat="server" AutoGenerateColumns="False" BorderWidth="0"
         Width="98%" CssClass="Grid" PageSize="100"
        onpageindexchanging="gvCurrencies_PageIndexChanging" 
        onrowcommand="gvCurrencies_RowCommand" 
        onrowdeleting="gvCurrencies_RowDeleting">
        <HeaderStyle CssClass="GridHead" />
        <AlternatingRowStyle CssClass="Grid_alertnative" />
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>                    
                        <%# Eval("CurrencyName")%>                    
                </ItemTemplate>
                <HeaderTemplate>                    
                        Currency
                </HeaderTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <%# Eval("CurrencySymbol")%>                    
                </ItemTemplate>
                <HeaderTemplate>                    
                        Symbol                    
                </HeaderTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <%# Eval("ExchangeRate")%>                    
                </ItemTemplate>
                <HeaderTemplate>                    
                        Exchange Rate                    
                </HeaderTemplate>
            </asp:TemplateField>
            <asp:TemplateField ItemStyle-Width="40">
                <ItemTemplate>                    
                        <asp:ImageButton ID="HyperLink1" runat="server"  Width="23" BorderStyle="None"
                            CommandArgument='<%# Eval("CurrencyID") %>' CommandName="EditExpense"
                            ToolTip="Edit" ImageUrl="~/App_Themes/admin/images/document_edit.png" />
                    
                </ItemTemplate>
                <HeaderTemplate>
                    Edit
                </HeaderTemplate>

<ItemStyle Width="40px"></ItemStyle>
            </asp:TemplateField>                      
            <%--<asp:TemplateField HeaderText="Delete" ItemStyle-Width="40">
                 <ItemTemplate> 
                       <asp:ImageButton ID="LinkButton1"
                         CommandArgument='<%# Eval("CurrencyID") %>'  Width="23" BorderStyle="None"
                         CommandName="Delete" OnClientClick="return DeleteConfirmation();" runat="server" 
                         ImageUrl="~/App_Themes/admin/images/delete.png" />                         
                     
                 </ItemTemplate>
<ItemStyle Width="40px"></ItemStyle>
               </asp:TemplateField> --%>               
        </Columns>
        <PagerSettings Mode="NumericFirstLast" />
    </asp:GridView>


</center>
                
                                <!-- put content here -->
					
					
					
					
					</td>
				</tr>
            </tbody>
        </table>

</asp:Content>

