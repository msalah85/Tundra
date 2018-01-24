
<%@ Page Title=".:: View Car Part Types List ::." Language="C#" MasterPageFile="Admin.master"
     AutoEventWireup="true" CodeFile="CarPartTypesView.aspx.cs" Inherits="adm_tunr_CarPartTypesView" %>
<%@ MasterType VirtualPath="Admin.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript" language="javascript">
    function DeleteConfirmation() {
        if (confirm("Are you sure! you want to delete the selected item?") == true)
            return true;
        else
            return false;
    }
    function EndRequest(sender, e) {
        $(document).ready(function () {

            $('.showPeriodMsgPopup').click(function () {
                //window.scrollTo(0, 0);
                $('html').animate({ scrollTop: 0 }, 'slow'); //IE, FF
                $('body').animate({ scrollTop: 0 }, 'slow'); //chrome, don't know if safary works
            });

        });
    }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table cellspacing="0" cellpadding="0" border="0" width="950px">
<tbody>
    <!-- Header -->
	<tr>
		<td class="innerContentHead">Car Part Types >> View list<div class="div-right margin-right">
        <asp:ImageButton runat="server" ID="btnAddNew" ToolTip="Add new" 
                ImageUrl="../App_Themes/admin/images/add-new.png" Width="20" Height="20" BorderStyle="None" BorderWidth="0" 
                onclick="btnAddNew_Click" /></div></td>
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
<!-- add/edit box -->
<table width="98%" cellspacing="0" cellpadding="8" bgcolor="#fae8c5" border="0" class="Grid" id="divAddEdit" runat="server" visible="false">
<tr align="center" valign="top" >
    <td>
    	 English Name 
    </td>
	<td>
        <asp:TextBox ID="txtNameEn" ValidationGroup="s" runat="server" ></asp:TextBox>           

                &nbsp;<asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator6" runat="server" 
		            ControlToValidate="txtNameEn" ValidationGroup="s" ToolTip="Required."
                    ErrorMessage=""><img alt="Notifier" src='../App_Themes/admin/images/warning.png' /></asp:RequiredFieldValidator>
              
    </td> 
      <td>
    	Arabic Name 
    </td>
	<td>
        <asp:TextBox ID="txtNameAr" ValidationGroup="s" runat="server" ></asp:TextBox>                   
    </td> 
</tr>
    <tr align="center" valign="top"  >	
    <td colspan="2">
        <asp:HiddenField ID="hfID" runat="server" />
        <asp:Button ID="btnAdd" Width="100" ValidationGroup="s" runat="server" Text="Save" 
                    CssClass="g-btn-save" onclick="btnAdd_Click" />
      <asp:Button ID="btnCancel" Width="100" runat="server" Text="Cancel" 
                    CssClass="g-btn-del" onclick="btnCancel_Click" />
    </td>
  </tr>  
</table>
<!-- end add/edit box-->
<!-- search box -->
<table width="98%" cellspacing="0" cellpadding="8" border="0" class="Grid">
<tr align="center" valign="top" >
	<td colspan="2">
        Car Part Type Name
    </td>  
</tr>
<tr align="center" valign="top"  >

    <td>
       <asp:TextBox ID="txtName" runat="server"></asp:TextBox> 
        
    </td>
    <td>
    	<asp:Button ID="btnSearch" CssClass="g-btn" Width="100px" runat="server" 
            Text="Filter" onclick="btnSearch_Click" />
    </td>
  </tr>
</table>
<br /><br />
<!-- end search box -->
<center>   
<asp:GridView ID="gvModels" runat="server" AutoGenerateColumns="False" 
         Width="98%" CssClass="Grid" onrowcommand="gvModels_RowCommand" 
         PageSize="100" 
         onpageindexchanging="gvModels_PageIndexChanging" 
         onrowdeleting="gvModels_RowDeleting" >
        <HeaderStyle CssClass="GridHead" />
        <AlternatingRowStyle CssClass="Grid_alertnative" />
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>                    
                        <%# Eval("Name_En")%>                    
                </ItemTemplate>
                <HeaderTemplate>                    
                        English Name 
                </HeaderTemplate>
            </asp:TemplateField> 
             <asp:TemplateField>
                <ItemTemplate>                    
                        <%# Eval("Name_Ar")%>                    
                </ItemTemplate>
                <HeaderTemplate>                    
                        Arabic Name 
                </HeaderTemplate>
            </asp:TemplateField> 
            <asp:TemplateField ItemStyle-Width="40">
                <ItemTemplate>                    
                        <asp:ImageButton ID="lbEdit"
                         CommandArgument='<%# Eval("ID") %>' CssClass="showPeriodMsgPopup"  Width="23" BorderStyle="None"
                         CommandName="EditItem" runat="server" ToolTip="Edit" ImageUrl="~/App_Themes/admin/images/document_edit.png" />
                         
                </ItemTemplate>
                <HeaderTemplate>
                    Edit    
                </HeaderTemplate>
            </asp:TemplateField>                      
            <asp:TemplateField HeaderText="Delete" ItemStyle-Width="40">
                 <ItemTemplate>                  
                     <asp:ImageButton ID="LinkButton1"
                         CommandArgument='<%# Eval("ID") %>'  Width="23" BorderStyle="None" ToolTip="Delete"
                         CommandName="Delete" OnClientClick="return confirm('Are you sure you want to delete this event?');"
                          runat="server" ImageUrl="~/App_Themes/admin/images/delete.png" />
                         
                     
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


