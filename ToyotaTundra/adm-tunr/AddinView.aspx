<%@ Page Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="AddinView.aspx.cs" 
    Inherits="Admin_UAE_Al_Jaroof_SiteAddin" Title="Administration | Addin Manager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" language="javascript">
        function DeleteConfirmation() {
            if (confirm("Are you sure!: you want to delete the selected items?") == true)
                return true;
            else
                return false;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table cellspacing="0" cellpadding="0" border="0" width="98%">
<tbody>
	<tr>
		<td class="innerContentHead">Add new Addins  >>  News/Events 
        <div class="div-right margin-right"><a href="AddingAdd.aspx" title="Add new"><img src="../App_Themes/admin/images/add-new.png" alt="Add new" /></a></div></td>
	</tr>
</tbody>
</table>
<br />

<table cellspacing="0" cellpadding="0" border="0"> 
    <tr>
        <td class="innerPlaceHolder">
<center>
<table cellspacing="0" cellpadding="0" border="0" width="98%" class="Grid"> 
    <tr>
        <td>Type</td>
        <td>
                Title</td>
        <td>
            <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>                                
        </td>
    </tr>                    
    <tr>
        <td width="165px">
            <asp:DropDownList ID="ddlFileType" runat="server" CssClass="small-input">
                    <asp:ListItem Value=""></asp:ListItem>
                    <asp:ListItem Value="news" Text="News"></asp:ListItem>
                    <asp:ListItem Value="events" Text="Events"></asp:ListItem>
            </asp:DropDownList>          
        </td>
        <td width="310px">
           <asp:TextBox ID="txtName" runat="server" Width="290px"></asp:TextBox> 
        </td>
        <td>
            <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="g-btn" Width="100" onclick="btnSearch_Click" />
                                
                &nbsp;</td>
    </tr>                    
</table>
</center>

<br /><br />

<center>
        
            
                 <asp:GridView ID="gvNews" runat="server" AutoGenerateColumns="False" 
                     Width="98%" CssClass="Grid" 
                     onrowcommand="gvNews_RowCommand"  PageSize="25"
                     onrowdatabound="gvNews_RowDataBound" onrowdeleting="gvNews_RowDeleting" 
                     onpageindexchanging="gvNews_PageIndexChanging">
                   <HeaderStyle CssClass="GridHead" />
                   <AlternatingRowStyle CssClass="Grid_alertnative" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>                                
                                    <%# Eval("Title") %>                                
                            </ItemTemplate>
                            <HeaderTemplate>
                                Title
                            </HeaderTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>                                
                                    <%# Eval("Type") %>                                
                            </ItemTemplate>
                            <HeaderTemplate>
                                Type
                            </HeaderTemplate>            
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <%# Eval("Active") %>
                            </ItemTemplate>
                            <HeaderTemplate>                                
                                    Active
                            </HeaderTemplate>
                            <ItemStyle Width="30px" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <%# Eval("ViewHome") %>
                            </ItemTemplate>
                            <HeaderTemplate>                                
                                    View home
                            </HeaderTemplate>
                            <ItemStyle Width="90px" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <%# Eval("Priority") %>                                
                            </ItemTemplate>
                            <HeaderTemplate>                                
                                    Priority                                
                            </HeaderTemplate>
                        <ItemStyle Width="30px" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>                                                                    
                                    <asp:HyperLink Width="23" BorderStyle="None" runat="server" ImageUrl="~/App_Themes/admin/images/document_edit.png" NavigateUrl='<%# "AddingEdit.aspx?id=" + Eval("ID") %>' ></asp:HyperLink>&nbsp;&nbsp;
                                    
                                     <asp:ImageButton ID="ImageButton1"
                                         CommandArgument='<%# Eval("ID") %>'  Width="23" BorderStyle="None"
                                         CommandName="Delete" OnClientClick="return DeleteConfirmation();" runat="server" ImageUrl="~/App_Themes/admin/images/delete.png" />
                         
                            </ItemTemplate>
                            <HeaderTemplate>
                                Update
                            </HeaderTemplate>
                        <ItemStyle Width="80px" />
                        </asp:TemplateField> 
                    </Columns>

                    <EmptyDataTemplate>
                        <asp:Label ID="Label1" runat="server" Text="There are no items in library, you can add new item from "></asp:Label>
                        &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="AddingAdd.aspx">here.</asp:HyperLink>
                    </EmptyDataTemplate>

    </asp:GridView> 
            
        
    <asp:HiddenField ID="langId" runat="server" />
</center>

<br /><br />

</td>
</tr>
</table>

</asp:Content>

