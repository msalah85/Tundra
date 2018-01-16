<%@ Page Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="SiteLinksView.aspx.cs" 
    Inherits="ShowLinks" Title=".:: View Website Pages list ::." %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" language="javascript">    
        function DeleteConfirmation()
            {
                if (confirm("Are you sure! you want to delete page selected?") == true)
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
					<td class="innerContentHead">View Website Pages list<div class="div-right margin-right"><a href="SiteLinksAdd.aspx" title="Add new"><img src="../App_Themes/admin/images/add-new.png" alt="Add new" /></a></div></td>
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
    	 Parent link
    </td>
    <td>
    	 Language</td>
	<td colspan="2">
        Page title
    </td>  
</tr>

<tr align="center" valign="top"  >
	<td>
        <asp:RadioButtonList ID="rblActive" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Text="All" Value="" Selected="True"></asp:ListItem>
            <asp:ListItem Text="Active" Value="1"></asp:ListItem>
            <asp:ListItem Text="Not active" Value="0"></asp:ListItem>
        </asp:RadioButtonList>
    </td>

	<td>
    	<asp:DropDownList ID="ddlLanguage" runat="server" CssClass="small-input" >
        </asp:DropDownList></td>

	<td>    
       <asp:TextBox ID="txtName" runat="server"></asp:TextBox> 
        
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
<asp:GridView ID="gvlinks" runat="server" AutoGenerateColumns="False" 
         Width="98%" CssClass="Grid" onrowcommand="gvlinks_RowCommand" 
         PageSize="20" onrowdatabound="gvLinks_RowDataBound"
         onpageindexchanging="gvlinks_PageIndexChanging" 
         onrowdeleting="gvlinks_RowDeleting" >
        <HeaderStyle CssClass="GridHead" />
        <AlternatingRowStyle CssClass="Grid_alertnative" />
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>                    
                        <%# Eval("link_name")%>                    
                </ItemTemplate>
                <HeaderTemplate>                    
                        Page Title
                </HeaderTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>                    
                        <%# Eval("lang_name")%>                    
                </ItemTemplate>
                <HeaderTemplate>                    
                        Language
                </HeaderTemplate>
            </asp:TemplateField>
            <asp:TemplateField ItemStyle-Width="100" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <%# Eval("link_order")%>                    
                </ItemTemplate>
                <HeaderTemplate>                    
                        Priority                    
                </HeaderTemplate>
            </asp:TemplateField>
            <asp:TemplateField ItemStyle-Width="100" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <%# Eval("Active")%>                    
                </ItemTemplate>
                <HeaderTemplate>
                    Active
                </HeaderTemplate>
            </asp:TemplateField>       
            <asp:TemplateField ItemStyle-Width="40">
                <ItemTemplate>                    
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "page-" + Eval("id") + "/" + MinutesuaeConcrete.ToSeoUrl(Eval("link_name")) + ".aspx" %>' Width="23" BorderStyle="None"
                            ToolTip="Edit" ImageUrl="~/App_Themes/admin/images/document_edit.png" />
                    
                </ItemTemplate>
                <HeaderTemplate>
                    Edit
                </HeaderTemplate>
            </asp:TemplateField>                      
            <asp:TemplateField HeaderText="Delete" ItemStyle-Width="40">
                 <ItemTemplate>                  
                     <asp:ImageButton ID="LinkButton1"
                         CommandArgument='<%# Eval("id") %>'  Width="23" BorderStyle="None"
                         CommandName="Delete" OnClientClick="return DeleteConfirmation();" runat="server" ImageUrl="~/App_Themes/admin/images/delete.png" />
                         
                     
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

