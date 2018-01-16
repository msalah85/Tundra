<%@ Page Title=".:: Expense Types Manager ::." Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="ExpenseTypes.aspx.cs" Inherits="ketmeerAdmin_ExpenseTypesView" %>

<%@ MasterType VirtualPath ="Admin.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript" language="javascript">
    function DeleteConfirmation() {
        if (confirm("Are you sure ! you want to delete the selected expense type?") == true)
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
					<td class="innerContentHead">Expense Types<div class="div-right margin-right">
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
    	 Type <span class="red-txt">*</span><asp:HiddenField ID="hfId" runat="server" />
    </td>
    <td width="81%">
    	<asp:TextBox ID="txtExpenseName" runat="server" ValidationGroup="s"></asp:TextBox>
        &nbsp; <asp:RequiredFieldValidator ControlToValidate="txtExpenseName" SetFocusOnError="true"  
        ErrorMessage="<img src='../App_Themes/admin/images/warning.png' /> *" Display="Dynamic" CssClass="red-txt" ValidationGroup="s" 
        ID="RequiredFieldValidator1" runat="server" ></asp:RequiredFieldValidator>
    
    </td>
  </tr>
   <tr align="right" valign="top" >
    <td>
    	 Currency Used 
    </td>
    <td>
        <asp:DropDownList ID="ddlCurrencyUsed" runat="server">
        </asp:DropDownList>
        &nbsp;<asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator3" runat="server" 
		            ControlToValidate="ddlCurrencyUsed" ValidationGroup="s" InitialValue=""
                    ErrorMessage="<img src='../App_Themes/admin/images/warning.png' /> *"></asp:RequiredFieldValidator>

    </td>
  </tr>
   <tr align="right" valign="top" >
    <td>
    	 Description 
    </td>
    <td>
    	<asp:TextBox ID="txtDetails" TextMode="MultiLine" runat="server"></asp:TextBox>
    </td>
  </tr>
  <tr align="right" valign="top" >
    <td>
    	 Category 
    </td>
    <td>
        <asp:RadioButtonList ID="rblGroupName" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Selected="True" Value="Cars" Text="Cars"></asp:ListItem>
            <asp:ListItem Value="General" Text="General"></asp:ListItem>
        </asp:RadioButtonList>
    </td>
  </tr>
  <tr align="center" valign="top" >
     <td >
	 </td>
    <td>    	 
        <asp:Button ID="btnSubmit" CssClass="g-btn" Width="100px" ValidationGroup="s" runat="server" Text="Save" 
            onclick="btnSubmit_Click" />
        <asp:Button ID="btnCancel" CssClass="g-btn" Width="100px" runat="server" Text="Cancel" 
            onclick="btnCancel_Click" />
       &nbsp;<asp:Label ID="lblError" CssClass="red-txt" runat="server"></asp:Label>
    </td>
  </tr>

</table>
</center>
    <br><br>            
					                <!-- put content here onrowdatabound="gvExpenseTypes_RowDataBound" -->
<center>
<asp:GridView ID="gvExpenseTypes" runat="server" AutoGenerateColumns="False" BorderWidth="0"
         Width="98%" CssClass="Grid" PageSize="100"
        onpageindexchanging="gvExpenseTypes_PageIndexChanging" 
        onrowcommand="gvExpenseTypes_RowCommand" 
        onrowdeleting="gvExpenseTypes_RowDeleting">
        <HeaderStyle CssClass="GridHead" />
        <AlternatingRowStyle CssClass="Grid_alertnative" />
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>                    
                        <%# Eval("ExpenseTypeName")%>                    
                </ItemTemplate>
                <HeaderTemplate>                    
                        Expense Type
                </HeaderTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <%# Eval("ExpenseTypeDetails")%>                    
                </ItemTemplate>
                <HeaderTemplate>                    
                        Description                    
                </HeaderTemplate>
            </asp:TemplateField>
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
                    <font color='<%# Eval("GroupName").ToString() != "Cars" ? "Green" : "#00556c"%>'><%# Eval("GroupName")%></font>
                </ItemTemplate>
                <HeaderTemplate>                    
                        Category                   
                </HeaderTemplate>
            </asp:TemplateField>
            <asp:TemplateField ItemStyle-Width="40">
                <ItemTemplate>                    
                        <asp:ImageButton ID="HyperLink1" runat="server"  Width="23" BorderStyle="None"
                            CommandArgument='<%# Eval("ExpenseTypeID") %>' CommandName="EditExpense"
                            ToolTip="Edit" ImageUrl="~/App_Themes/admin/images/document_edit.png" />
                    
                </ItemTemplate>
                <HeaderTemplate>
                    Edit
                </HeaderTemplate>

<ItemStyle Width="40px"></ItemStyle>
            </asp:TemplateField>                      
            <asp:TemplateField HeaderText="Delete" ItemStyle-Width="40">
                 <ItemTemplate> 
                       <asp:ImageButton ID="LinkButton1"
                         CommandArgument='<%# Eval("ExpenseTypeID") %>'  Width="23" BorderStyle="None"
                         CommandName="Delete" OnClientClick="return DeleteConfirmation();" runat="server" 
                         ImageUrl="~/App_Themes/admin/images/delete.png" />
                         
                     
                 </ItemTemplate>

<ItemStyle Width="40px"></ItemStyle>
               </asp:TemplateField>                
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

