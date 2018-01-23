<%@ Page Title=".:: Add/Edit Car Part Information ::." Language="C#" MasterPageFile="Admin.master"
    AutoEventWireup="true" CodeFile="CarPartAdd.aspx.cs" Inherits="adm_tunr_CarPartAdd" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellspacing="0" cellpadding="0" border="0" width="98%">
        <tbody>
            <tr>
                <td class="innerContentHead">Part Cars >> Add/Edit PartCar
                </td>
            </tr>
        </tbody>
    </table>
    <br />
    <asp:Label ID="lblError" runat="server" ForeColor="red"></asp:Label>
    <asp:ValidationSummary ID="vldSummary" runat="server" ValidationGroup="s" ShowMessageBox="true"
        ShowSummary="false" HeaderText="Please review all required (*) fields below." />
    <br />
    <!-- basic info -->
    <h6 class="div-right margin-right" style="padding: 0; margin: 0;">All fields (<font color="red">*</font>) mandatory.
    </h6>
    <table style="border-collapse: collapse;" cellspacing="2" cellpadding="2" width="98%"
        class="Grid">
        <!--
            Web should arrange controls on the page by important fields for the customer So like

            - Car Maker
            -Car Model
            - Year
            - PArt Type
            - Part Description
            - PRice
            - Periority
            - Active

            Keep Delete field hidden add it in code only

            If the part has Deleted = True IT will be hidden of the user in Admin or site.
            -->


        <tbody>
            <tr>
                <td>Maker: <em class="red-txt">*</em>
                </td>
                <td>
                    <asp:DropDownList ID="ddlMarkers" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlMarkers_SelectedIndexChanged">
                    </asp:DropDownList>
                    &nbsp;<asp:RequiredFieldValidator SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator5"
                        runat="server" ControlToValidate="ddlMarkers" ValidationGroup="s" InitialValue=""
                        ToolTip="Please select car maker." ErrorMessage=""><img runat="server"  src="~/App_Themes/admin/images/warning.png" alt="warning" /></asp:RequiredFieldValidator>
                </td>
                <td>Model: <em class="red-txt">*</em>
                </td>
                <td>
                    <asp:DropDownList ID="ddlModels" runat="server">
                    </asp:DropDownList>
                    &nbsp;<asp:RequiredFieldValidator SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator7"
                        runat="server" ControlToValidate="ddlModels" ValidationGroup="s" InitialValue=""
                        ToolTip="Please select car model." ErrorMessage=""><img runat="server"  src="~/App_Themes/admin/images/warning.png" alt="warning" /></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td>Year: <em class="red-txt">*</em>
                </td>
                <td>
                    <asp:DropDownList ID="ddlYears" runat="server">
                    </asp:DropDownList>
                    &nbsp;<asp:RequiredFieldValidator SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator8"
                        runat="server" ControlToValidate="ddlYears" ValidationGroup="s" InitialValue=""
                        ToolTip="Please select car year." ErrorMessage=""><img runat="server"  src="~/App_Themes/admin/images/warning.png" alt="warning" /></asp:RequiredFieldValidator>
                </td>
                <td>Car Part Type: <em class="red-txt">*</em>
                </td>
                <td>
                    <asp:DropDownList ID="ddlcarPartType" runat="server">
                    </asp:DropDownList>
                                        &nbsp;<asp:RequiredFieldValidator SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator10"
                        runat="server" ControlToValidate="ddlcarPartType" ValidationGroup="s" InitialValue=""
                        ToolTip="Please select car style." ErrorMessage=""><img runat="server"  src="~/App_Themes/admin/images/warning.png" alt="warning" /></asp:RequiredFieldValidator>
                </td>
            </tr>
            
              <tr>
                <td>Description: <em class="red-txt">*</em>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="txtDesc" ValidationGroup="s" runat="server" TextMode="MultiLine"
                        Height="100" Width="600px"></asp:TextBox>
                                                                               &nbsp;<asp:RequiredFieldValidator SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator2"
                        runat="server" ControlToValidate="txtDesc" ValidationGroup="s" InitialValue=""
                        ToolTip="Please select car style." ErrorMessage=""><img runat="server"  src="~/App_Themes/admin/images/warning.png" alt="warning" /></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
             
                <td>Sale Price
                </td>
                <td>
                    <asp:TextBox ID="txtSalePrice" ValidationGroup="s" runat="server"></asp:TextBox>
                </td>
                <%-- <td>Priority <em class="red-txt">*</em>
                </td>
                <td>s
                    <asp:TextBox ID="txtPriority" ValidationGroup="s" runat="server"></asp:TextBox>
                                                           &nbsp;<asp:RequiredFieldValidator SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator1"
                        runat="server" ControlToValidate="txtPriority" ValidationGroup="s" InitialValue=""
                        ToolTip="Please select car style." ErrorMessage=""><img runat="server"  src="~/App_Themes/admin/images/warning.png" alt="warning" /></asp:RequiredFieldValidator>
                &nbsp;
                </td>--%>
            </tr>
            <tr>
                   <td width="15%">Active <em class="red-txt">*</em>
                </td>
                <td>
                    <asp:CheckBox ID="cbActive" Text=" Yes!! Tick me to active viewing of this car."
                        runat="server" Checked="true" />
                </td>
            </tr>
            
           
            <tr>
                <td valign="top">&nbsp;
                </td>
                <td colspan="3">
                    <asp:Button ID="btnAdd" ValidationGroup="s" runat="server" Text="Save Car" CssClass="g-btn"
                        OnClick="btnAdd_Click" />
                    <a id="A1" href="CarsView.aspx" runat="server" class="g-btn">Cancel Saving & Go to List</a>
                    &nbsp;
                </td>
            </tr>
            <tr>
            </tr>
        </tbody>
    </table>
    <!-- end basic info -->
    <br />
    <asp:HiddenField ID="hfID" runat="server" />
    <asp:HiddenField ID="hfVisitors" Value="0" runat="server" />
    <asp:HiddenField ID="hfTransferStatus" Value="1" runat="server" />
    <asp:HiddenField ID="hfMain_Picture" runat="server" />
    <style type="text/css">
        select {
            width: 256px !important;
        }
    </style>
    <script type="text/javascript">
        function pageLoad(sender, e) {

        }
    </script>
</asp:Content>
