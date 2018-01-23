<%@ Page Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="CarPartsImages.aspx.cs"
    Inherits="adm_tunr_CarPartsImages" Title="Administration | Upload Images" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript" language="javascript">    
        function DeleteConfirmation() {
            if (confirm("Are you sure!: you want to delete the selected item?") == true)
                return true;
            else
                return false;
        }
        function ResetConfirmation() {
            if (confirm("Are you sure!: you want to reset it to main picture?") == true)
                return true;
            else
                return false;
        }
    </script>
    <script src="/Scripts/jquery.MultiFile.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellspacing="0" cellpadding="0" border="0" width="98%">
        <tbody>
            <tr>
                <td class="innerContentHead">Car Partss >> Car Part Pictures
                    <div class="div-right">
                        <a href="CarsView.aspx" title="Back to cars">
                            <img src="../App_Themes/admin/images/go-back.png" height="24" alt="Back to cars" /></a>    <a title="Add picture" href="#addPicture">
                                <img src="../App_Themes/admin/images/add-new.png" alt="Add new" /></a>
                    </div>
                </td>
            </tr>
        </tbody>
    </table>
    <br />
    <table cellspacing="0" cellpadding="0" border="0" width="98%">
        <tr>
            <td align="center" valign="middle">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:DataList ID="DataList1" runat="server" RepeatColumns="6" Width="99%"
                            RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand"
                            OnItemDataBound="DataList1_ItemDataBound">
                            <ItemTemplate>
                                <center>
                                    <a runat="server" href='<%# "~/Public/image/cars/" + (Eval("URL") != null ? Eval("URL") : "no_photo.jpg") %>' target="_blank">
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Public/image/cars/_thumb/" + (Eval("URL") != null ? Eval("URL") : "no_photo.jpg") %>' Width="100px" />
                                </center>
                                </a>
                            <center>
                                <asp:LinkButton ID="ResetMainPic" CommandName="ResetMainImage"
                                    OnClientClick="return ResetConfirmation();" CommandArgument='<%# Eval("id") %>'
                                    runat="server">Main Picture</asp:LinkButton></center>

                                <center>
                                    <asp:Label ID="lblFlag" runat="server" ToolTip='<%# Eval("MainImage") %>'
                                        Font-Bold="False" Font-Italic="True" ForeColor="#CC6600"></asp:Label></center>

                                <center>
                                    <asp:LinkButton ID="itemToDelete" CommandName="Delete" ToolTip='<%# Eval("URL") %>'
                                        OnClientClick="return DeleteConfirmation();" CommandArgument='<%# Eval("id") %>'
                                        runat="server">Delete Picture</asp:LinkButton></center>
                                <br />
                            </ItemTemplate>
                        </asp:DataList>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
    </table>
    <br />
    <table cellspacing="0" cellpadding="0" border="0" width="98%" id="addPicture">
        <tbody>
            <tr>
                <td class="innerContentHead">Upload Picture(s)</td>
            </tr>
                     
        </tbody>
    </table>
    <br />
    <table cellspacing="0" cellpadding="0" border="0" width="98%">
        <tbody>
            <tr>
                <td colspan="2">&nbsp;
                        
                        <asp:Label ID="lblError" runat="server" Visible="False" ForeColor="Red"></asp:Label>

                    <div id="divMessage" runat="server">
                    </div>
                </td>
            </tr>
            <tr>
                <td width="25%">Select more than one picture. </td>
                <td align="left" valign="top">

                    <asp:UpdatePanel ID="UpdatePanel22" runat="server" UpdateMode="conditional">
                        <Triggers>
                            <asp:PostBackTrigger ControlID="btnUpload" />
                        </Triggers>
                        <ContentTemplate>
                            <asp:FileUpload ID="FileUpload2" runat="server" maxlength="10" class="multi" accept="gif|jpg|jpeg|png" />
                        </ContentTemplate>
                    </asp:UpdatePanel>

                    <asp:RequiredFieldValidator SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator12" runat="server"
                        ControlToValidate="FileUpload2" ValidationGroup="s"
                        ErrorMessage="Please select logo to upload."></asp:RequiredFieldValidator>
                </td>
            </tr>
               <tr>
                   <td >
                </td>
                <td >
                   Is Main <asp:CheckBox ID="cbMain" runat="server" Checked="false" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <center>
                        <asp:Button ID="btnUpload" runat="server" Text="Upload & Save Picture(s)"
                            OnClick="btnUpload_Click" /></center>
                </td>
            </tr>
        </tbody>
    </table>
    <asp:HiddenField ID="hfMasterID" runat="server" />
</asp:Content>
