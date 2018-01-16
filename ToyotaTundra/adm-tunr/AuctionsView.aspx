<%@ Page Title=".:: Auctions List ::." Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="AuctionsView.aspx.cs" Inherits="admin_elaf_AuctionsView" %>
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
//                $('.popupPeriod').fadeIn(1000, function () {
//                    setTimeout(function () { $('.popupPeriod').fadeOut(2000); }, 3000);
//                });
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
		<td class="innerContentHead">Auctions >> View list<div class="div-right margin-right">
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
    	 Name
    </td>
	<td>
        <asp:TextBox ID="txtNameS" ValidationGroup="s" runat="server" ></asp:TextBox>           

                &nbsp;<asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator6" runat="server" 
		            ControlToValidate="txtNameS" ValidationGroup="s" ToolTip="Required."
                    ErrorMessage=""><img alt="Notifier" src='../App_Themes/admin/images/warning.png' /></asp:RequiredFieldValidator>
              
    </td> 
    <td>Email</td> 
    <td>
     <asp:TextBox ID="txtEmail" ValidationGroup="s" runat="server" ></asp:TextBox>           
               <%-- &nbsp;<asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator4" runat="server" 
		            ControlToValidate="txtEmail" ValidationGroup="s" 
                    ErrorMessage="Required."></asp:RequiredFieldValidator>--%> 
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" SetFocusOnError="True"  
                    ControlToValidate="txtEmail" ErrorMessage="" ToolTip="Please verify email address." 
                    Display="Dynamic" CssClass="red-txt" ValidationGroup="s" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" >
                    <img alt="Notifier" src='../App_Themes/admin/images/warning.png' /></asp:RegularExpressionValidator>

    </td> 
</tr>
<tr align="center" valign="top"  >
	<td>
        Active
    </td>
    <td>
       <asp:CheckBox ID="cbActive" Text="Yes active." runat="server" Checked="true" />
        
    </td>
    <td>
    Priority
    	
    </td>
    <td>
        <asp:TextBox ID="txtPriority" ValidationGroup="s" Text="1" runat="server"></asp:TextBox> 
		        &nbsp;<asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator1" runat="server" 
		            ControlToValidate="txtPriority" ValidationGroup="s" ToolTip="Required"
                    ErrorMessage=""><img alt="Notifier" src='../App_Themes/admin/images/warning.png' /></asp:RequiredFieldValidator>
                 <asp:CompareValidator ID="CompareValidator2" ControlToValidate="txtPriority"   
                    runat="server" ErrorMessage="" ToolTip="Please validate priority as number."  
                    Display="Dynamic" CssClass="red-txt" ValidationGroup="s" SetFocusOnError="true" 
                    Type="Integer" Operator="DataTypeCheck"><img alt="Notifier" src='../App_Themes/admin/images/warning.png' /></asp:CompareValidator>
    </td> 
  </tr>
  <tr valign="top">
    <td>Phone</td>
    <td><asp:TextBox ID="txtPhone" ValidationGroup="s" runat="server" ></asp:TextBox> </td>
    <td>Description</td>
    <td><asp:TextBox ID="txtShortdesc" TextMode="MultiLine" runat="server" 
                    Height="60px" Width="350"></asp:TextBox></td>
  </tr>
  <tr>
    <td colspan="4">
        <asp:HiddenField ID="hfID" runat="server" />
        <asp:Button ID="btnAdd" ValidationGroup="s" runat="server" Text="Save" 
                    CssClass="g-btn-save" onclick="btnAdd_Click" />
      <asp:Button ID="btnCancel" runat="server" Text="Cancel" 
                    CssClass="g-btn-del" onclick="btnCancel_Click" /></td>
  </tr>
</table>
<!-- end add/edit box-->
<br /><br />
<!-- search box -->
<table width="98%" cellspacing="0" cellpadding="8" border="0" class="Grid">
<tr align="center" valign="top" >
    <td>
    	 Active
    </td>
	<td colspan="2">
        Auction name
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
<asp:GridView ID="gvAuctions" runat="server" AutoGenerateColumns="False" 
         Width="98%" CssClass="Grid" onrowcommand="gvAuctions_RowCommand" 
         PageSize="100" 
         onpageindexchanging="gvAuctions_PageIndexChanging" 
         onrowdeleting="gvAuctions_RowDeleting" >
        <HeaderStyle CssClass="GridHead" />
        <AlternatingRowStyle CssClass="Grid_alertnative" />
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>                    
                        <%# Eval("AuctionName")%>                    
                </ItemTemplate>
                <HeaderTemplate>                    
                        Name
                </HeaderTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>                    
                        <%# Eval("AuctionEmail")%>                    
                </ItemTemplate>
                <HeaderTemplate>                    
                        Email
                </HeaderTemplate>
            </asp:TemplateField>
             <asp:TemplateField>
                <ItemTemplate>                    
                        <%# Eval("AuctionPhone")%>                    
                </ItemTemplate>
                <HeaderTemplate>                    
                        Phone
                </HeaderTemplate>
            </asp:TemplateField>
            <asp:TemplateField ItemStyle-Width="100" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <%# Eval("Priority")%>                    
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
                        <%--<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "auction-" + Eval("AuctionID") + "/" + MinutesuaeConcrete.ToSeoUrl(Eval("AuctionName")) + ".aspx" %>' Width="23" BorderStyle="None"
                            ToolTip="Edit" ImageUrl="~/App_Themes/admin/images/document_edit.png" />
                    --%>
                    <asp:ImageButton ID="lbEdit"  ToolTip="Edit"
                         CommandArgument='<%# Eval("AuctionID") %>' CssClass="showPeriodMsgPopup"  Width="23" BorderStyle="None"
                         CommandName="EditItem" runat="server" ImageUrl="~/App_Themes/admin/images/document_edit.png" />
                         
                </ItemTemplate>
                <HeaderTemplate>
                    Edit
                </HeaderTemplate>
            </asp:TemplateField>                      
            <asp:TemplateField HeaderText="Delete" ItemStyle-Width="40">
                 <ItemTemplate>                  
                     <asp:ImageButton ID="LinkButton1"
                         CommandArgument='<%# Eval("AuctionID") %>'  Width="23" BorderStyle="None"
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

