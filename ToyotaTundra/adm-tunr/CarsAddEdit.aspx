<%@ Page Title=".:: Add/Edit Car Information ::." Language="C#" MasterPageFile="Admin.master"
    AutoEventWireup="true" CodeFile="CarsAddEdit.aspx.cs" Inherits="admin_elaf_CarsAddEdit" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellspacing="0" cellpadding="0" border="0" width="98%">
        <tbody>
            <tr>
                <td class="innerContentHead">Cars >> Add/Edit Car
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
        <tbody>
            <tr>
                <td width="15%">Car Code:<em class="red-txt">*</em>
                </td>
                <td width="35%">
                    <asp:TextBox ID="txtCode" ValidationGroup="s" runat="server" Width="180px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator6"
                        runat="server" ControlToValidate="txtCode" ValidationGroup="s" ToolTip="Please enter car code."
                        ErrorMessage=""><img runat="server"  src="~/App_Themes/admin/images/warning.png" alt="warning" /></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ToolTip="Please validate car code as a number."
                        SetFocusOnError="true" CssClass="red-txt" ValidationGroup="s" ControlToValidate="txtCode"
                        ErrorMessage="" Operator="DataTypeCheck" Type="Integer"><img runat="server"  src="~/App_Themes/admin/images/warning.png" alt="warning" /></asp:CompareValidator>
                </td>
                <td width="15%">Active <em class="red-txt">*</em>
                </td>
                <td>
                    <asp:CheckBox ID="cbActive" Text=" Yes!! Tick me to active viewing of this car."
                        runat="server" Checked="true" />
                </td>
            </tr>
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
                <td>Style: <em class="red-txt">*</em>
                </td>
                <td>
                    <asp:DropDownList ID="ddlbody_style" runat="server">
                    </asp:DropDownList>
                    &nbsp;<asp:RequiredFieldValidator SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator10"
                        runat="server" ControlToValidate="ddlbody_style" ValidationGroup="s" InitialValue=""
                        ToolTip="Please select car style." ErrorMessage=""><img runat="server"  src="~/App_Themes/admin/images/warning.png" alt="warning" /></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Exterior Color: <em class="red-txt">*</em>
                </td>
                <td>
                    <asp:DropDownList ID="ddlexterior_color" runat="server">
                    </asp:DropDownList>
                    <%-- &nbsp;<asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="ddlexterior_color" ValidationGroup="s" InitialValue=""
                    ErrorMessage=""><img runat="server"  src="~/App_Themes/admin/images/warning.png" alt="warning" /></asp:RequiredFieldValidator>--%>
                </td>
                <td>Working Status: <em class="red-txt">*</em>
                </td>
                <td>
                    <asp:DropDownList ID="ddlWorkingStatus_ID" runat="server">
                    </asp:DropDownList>
                    &nbsp;<asp:RequiredFieldValidator SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator9"
                        runat="server" ControlToValidate="ddlWorkingStatus_ID" ValidationGroup="s" InitialValue=""
                        ToolTip="Please select car status." ErrorMessage="">
                        <img id="Img1" runat="server" src="~/App_Themes/admin/images/warning.png" alt="warning" />
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td valign="top">Chassis No <em class="red-txt">*</em>
                </td>
                <td>
                    <asp:TextBox ID="txtchassis_no" ValidationGroup="s" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator1"
                        runat="server" ControlToValidate="txtchassis_no" ValidationGroup="s" ToolTip="Please enter car chassis no."
                        ErrorMessage=""><img alt="Required" runat="server"  src="~/App_Themes/admin/images/warning.png" /></asp:RequiredFieldValidator>
                </td>
                <td>Lot No:
                </td>
                <td>
                    <asp:TextBox ID="txtLot_no" ValidationGroup="s" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Car Owner:
                </td>
                <td>
                    <asp:RadioButtonList ID="rblFeatures" runat="server" RepeatDirection="Horizontal"
                        RepeatLayout="Flow">
                        <asp:ListItem Value="false" Text="Company" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="Client" Value="true"></asp:ListItem>
                    </asp:RadioButtonList>
                    &nbsp;<asp:RequiredFieldValidator SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator11"
                        runat="server" ControlToValidate="rblFeatures" ValidationGroup="s" ToolTip="Please select car owner."
                        ErrorMessage="">
                        <img id="Img2" alt="Required" runat="server" src="~/App_Themes/admin/images/warning.png" />
                    </asp:RequiredFieldValidator>
                </td>
                <td>Purchase Date:
                </td>
                <td>
                    <asp:TextBox ID="txtPurchaseDate" ValidationGroup="s" placeholder="DD/MM/YYYY" runat="server"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender Format="MM/dd/yyyy" ID="CalendarExtender1" runat="server" Enabled="True" TargetControlID="txtPurchaseDate"></ajaxToolkit:CalendarExtender>
                    <asp:CompareValidator Operator="DataTypeCheck" Type="Date" SetFocusOnError="true"
                        CssClass="red-txt" ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPurchaseDate"
                        ValidationGroup="s" ToolTip="Please validate entered date as month/day/year format."
                        ErrorMessage=""><img runat="server"  src="~/App_Themes/admin/images/warning.png" alt="warning" /></asp:CompareValidator>
                </td>
            </tr>
        </tbody>
    </table>
    <!-- end basic info -->
    <br />
    <!-- car options -->
    <table cellspacing="0" cellpadding="0" border="0" width="98%">
        <tr>
            <td class="innerContentHead">Car Options
            </td>
        </tr>
    </table>
    <table style="border-collapse: collapse;" cellspacing="2" cellpadding="2" width="98%"
        class="Grid">
        <tbody>
            <tr>
                <td width="15%">Car Drive:
                </td>
                <td width="35%">
                    <asp:DropDownList ID="ddlCar_drive" runat="server">
                    </asp:DropDownList>
                </td>
                <td width="15%">Car Engine
                </td>
                <td>
                    <asp:DropDownList ID="ddlCar_engine" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Car Capacity:
                </td>
                <td>
                    <asp:DropDownList ID="ddlcar_capacity" runat="server">
                    </asp:DropDownList>
                </td>
                <td>Transmission:
                </td>
                <td>
                    <asp:DropDownList ID="ddlcar_transmission" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Interior Color:
                </td>
                <td>
                    <asp:DropDownList ID="ddlinterior_color" runat="server">
                    </asp:DropDownList>
                </td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>Engine No:
                </td>
                <td>
                    <asp:TextBox ID="txtEngine_no" ValidationGroup="s" runat="server"></asp:TextBox>
                </td>
                <td>Mileage:
                </td>
                <td>
                    <asp:TextBox ID="txtMileage" ValidationGroup="s" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <b>Accessories:</b>
                </td>
            </tr>
            <tr>
                <td colspan="4" align="left" valign="top">
                    <asp:CheckBoxList ID="cblCarOption" runat="server" RepeatColumns="3" Width="100%"
                        RepeatDirection="Vertical" RepeatLayout="Table">
                        <asp:ListItem Value="Full Options" Selected="True" Text="Full Options">Full Options</asp:ListItem>
                        <asp:ListItem Value="Airbag: Driver" Text="Airbag: Driver">Airbag: Driver</asp:ListItem>
                        <asp:ListItem Value="Fully Auto" Text="Fully Auto">Fully Auto</asp:ListItem>
                        <asp:ListItem Value="Power Windows" Text="Power Windows">Power Windows</asp:ListItem>
                        <asp:ListItem Value="Airbag: Passenger" Text="Airbag: Passenger">Airbag: Passenger</asp:ListItem>
                        <asp:ListItem Value="Rear Window Defroster" Text="Rear Window Defroster">Rear Window Defroster</asp:ListItem>
                        <asp:ListItem Value="Fully Loaded" Text="Fully Loaded">Fully Loaded</asp:ListItem>
                        <asp:ListItem Value="Airbag: Side" Text="Airbag: Side">Airbag: Side</asp:ListItem>
                        <asp:ListItem Value="Rear Window Wiper" Text="Rear Window Wiper">Rear Window Wiper</asp:ListItem>
                        <asp:ListItem Value="Dealer warranty" Text="Dealer warranty">Dealer warranty</asp:ListItem>
                        <asp:ListItem Value="Alarm" Text="Alarm">Alarm</asp:ListItem>
                        <asp:ListItem Value="Tinted Glass" Text="Tinted Glass">Tinted Glass</asp:ListItem>
                        <asp:ListItem Value="FSH" Text="FSH">FSH</asp:ListItem>
                        <asp:ListItem Value="Anti-Lock Brakes/ABS" Text="Anti-Lock Brakes/ABS">Anti-Lock Brakes/ABS</asp:ListItem>
                        <asp:ListItem Value="Anti-Lock Brakes" Text="Anti-Lock Brakes">Anti-Lock Brakes</asp:ListItem>
                        <asp:ListItem Value="Power Locks" Text="Power Locks">Power Locks</asp:ListItem>
                        <asp:ListItem Value="Fog Lights" Text="Fog Lights">Fog Lights</asp:ListItem>
                        <asp:ListItem Value="Cruise Control" Text="Cruise Control">Cruise Control</asp:ListItem>
                        <asp:ListItem Value="Power Steering" Text="Power Steering">Power Steering</asp:ListItem>
                        <asp:ListItem Value="A/C: Front" Text="A/C: Front">A/C: Front</asp:ListItem>
                        <asp:ListItem Value="Navigation System" Text="Navigation System">Navigation System</asp:ListItem>
                        <asp:ListItem Value="Keyless Entry" Text="Keyless Entry">Keyless Entry</asp:ListItem>
                        <asp:ListItem Value="A/C: Rear" Text="A/C: Rear">A/C: Rear</asp:ListItem>
                        <asp:ListItem Value="TV/VCR/DVD" Text="TV/VCR/DVD">TV/VCR/DVD</asp:ListItem>
                        <asp:ListItem Value="Fabric Seats" Text="Fabric Seats">Fabric Seats</asp:ListItem>
                        <asp:ListItem Value="Cassette Radio" Text="Cassette Radio">Cassette Radio</asp:ListItem>
                        <asp:ListItem Value="Alloy Wheels" Text="Alloy Wheels">Alloy Wheels</asp:ListItem>
                        <asp:ListItem Value="Bucket Seats" Text="Bucket Seats">Bucket Seats</asp:ListItem>
                        <asp:ListItem Value="CD Changer" Text="CD Changer">CD Changer</asp:ListItem>
                        <asp:ListItem Value="Sunroof/Moon roof" Text="Sunroof/Moon roof">Sunroof/Moon roof</asp:ListItem>
                        <asp:ListItem Value="Leather Interior" Text="Leather Interior">Leather Interior</asp:ListItem>
                        <asp:ListItem Value="CD Player" Text="CD Player">CD Player</asp:ListItem>
                        <asp:ListItem Value="Third Row Seats" Text="Third Row Seats">Third Row Seats</asp:ListItem>
                        <asp:ListItem Value="Memory Seats" Text="Memory Seats">Memory Seats</asp:ListItem>
                        <asp:ListItem Value="DVD Player" Text="DVD Player">DVD Player</asp:ListItem>
                        <asp:ListItem Value="Tow Package" Text="Tow Package">Tow Package</asp:ListItem>
                        <asp:ListItem Value="Power Seats" Text="Power Seats">Power Seats </asp:ListItem>
                        <asp:ListItem Value="Premium Sound" Text="Premium Sound">Premium Sound </asp:ListItem>
                        <asp:ListItem Value="Warranty" Text="Warranty">Warranty</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
        </tbody>
    </table>
    <!-- end car options -->
    <br />
    <!-- car shipping -->
    <table cellspacing="0" cellpadding="0" border="0" width="98%">
        <tr>
            <td class="innerContentHead">Shipping Information
            </td>
        </tr>
    </table>
    <table style="border-collapse: collapse;" cellspacing="2" cellpadding="2" width="98%"
        class="Grid">
        <tbody>
            <tr>
                <td>Towing Co.
                </td>
                <td>
                    <asp:DropDownList ID="ddlTowingCo" runat="server">
                    </asp:DropDownList>
                </td>
                <td>Left Yard Date
                </td>
                <td>
                    <asp:TextBox ID="txtCheckoutDate" ValidationGroup="s" runat="server"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender Format="MM/dd/yyyy" ID="CalendarExtender7" runat="server" Enabled="True" TargetControlID="txtCheckoutDate"></ajaxToolkit:CalendarExtender>
                    <asp:CompareValidator Operator="DataTypeCheck" Type="Date" SetFocusOnError="true"
                        CssClass="red-txt" ID="CompareValidator2" runat="server" ControlToValidate="txtCheckoutDate"
                        ValidationGroup="s" ToolTip="Please validate entered date as month/day/year format."
                        ErrorMessage=""><img runat="server"  src="~/App_Themes/admin/images/warning.png" alt="warning" /></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>Container Code
                </td>
                <td>
                    <asp:TextBox ID="txtContainerCode" runat="server"></asp:TextBox>
                </td>
                <td>Container No:
                </td>
                <td>
                    <asp:TextBox ID="txtcontainer_no" ValidationGroup="s" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Booking No.
                </td>
                <td>
                    <asp:TextBox ID="txtBookingNo" runat="server"></asp:TextBox>
                </td>
                <td valign="top">Poly Fielding
                </td>
                <td>
                    <asp:TextBox ID="txtPolyFielding" TextMode="MultiLine" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td width="15%">Shipping Company:
                </td>
                <td width="35%">
                    <asp:DropDownList ID="ddlShippingCompany_ID" runat="server">
                    </asp:DropDownList>
                </td>
                <td>Ship:
                </td>
                <td>
                    <asp:DropDownList ID="ddlShip_ID" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td width="15%">Port Shipping:
                </td>
                <td>
                    <asp:DropDownList ID="ddlPortShipping_ID" runat="server">
                    </asp:DropDownList>
                </td>
                <td>Shipping Date:
                </td>
                <td>
                    <asp:TextBox ID="txtShippingDate" ValidationGroup="s" runat="server"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender Format="MM/dd/yyyy" ID="CalendarExtender6" Animated="true" PopupPosition="TopRight"
                        runat="server" Enabled="True" TargetControlID="txtShippingDate"></ajaxToolkit:CalendarExtender>
                    <asp:CompareValidator Operator="DataTypeCheck" Type="Date" SetFocusOnError="true"
                        CssClass="red-txt" ID="CompareValidator3" runat="server" ControlToValidate="txtShippingDate"
                        ValidationGroup="s" ToolTip="Please validate entered date as month/day/year format."
                        ErrorMessage=""><img runat="server"  src="~/App_Themes/admin/images/warning.png" alt="warning" /></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>Expected Arrival Date
                </td>
                <td>
                    <asp:TextBox ID="txtExpectedArrivalDate" ValidationGroup="s" runat="server"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender Format="MM/dd/yyyy" ID="CalendarExtender8" runat="server" Enabled="True" TargetControlID="txtExpectedArrivalDate"></ajaxToolkit:CalendarExtender>
                    <asp:CompareValidator Operator="DataTypeCheck" Type="Date" SetFocusOnError="true"
                        CssClass="red-txt" ID="CompareValidator4" runat="server" ControlToValidate="txtExpectedArrivalDate"
                        ValidationGroup="s" ToolTip="Please validate entered date as month/day/year format."
                        ErrorMessage=""><img runat="server"  src="~/App_Themes/admin/images/warning.png" alt="warning" /></asp:CompareValidator>
                </td>
                <td>Dubia Arrival Date
                </td>
                <td>
                    <asp:TextBox ID="txtDubiaArrivalDate" ValidationGroup="s" runat="server"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender Format="MM/dd/yyyy" ID="CalendarExtender10" runat="server" Enabled="True" TargetControlID="txtDubiaArrivalDate"></ajaxToolkit:CalendarExtender>
                    <asp:CompareValidator Operator="DataTypeCheck" Type="Date" SetFocusOnError="true"
                        CssClass="red-txt" ID="CompareValidator5" runat="server" ControlToValidate="txtDubiaArrivalDate"
                        ValidationGroup="s" ToolTip="Please validate entered date as month/day/year format."
                        ErrorMessage=""><img runat="server"  src="~/App_Themes/admin/images/warning.png" alt="warning" /></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>Sharjah Arrival Date
                </td>
                <td>
                    <asp:TextBox ID="txtSharjahArrivalDate" ValidationGroup="s" runat="server"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender Format="MM/dd/yyyy" ID="CalendarExtender11" runat="server" Enabled="True" TargetControlID="txtSharjahArrivalDate"></ajaxToolkit:CalendarExtender>
                    <asp:CompareValidator Operator="DataTypeCheck" Type="Date" SetFocusOnError="true"
                        CssClass="red-txt" ID="CompareValidator6" runat="server" ControlToValidate="txtSharjahArrivalDate"
                        ValidationGroup="s" ToolTip="Please validate entered date as month/day/year format."
                        ErrorMessage=""><img runat="server"  src="~/App_Themes/admin/images/warning.png" alt="warning" /></asp:CompareValidator>
                </td>
                <td>Customs No:
                </td>
                <td>
                    <asp:TextBox ID="txtCustomsNo" ValidationGroup="s" runat="server"></asp:TextBox>
                </td>
            </tr>
        </tbody>
    </table>
    <!-- end car shipping -->
    <br />
    <!-- car cost -->
    <table cellspacing="0" cellpadding="0" border="0" width="98%">
        <tr>
            <td class="innerContentHead">Workshops (in UAE)
            </td>
        </tr>
    </table>
    <table style="border-collapse: collapse;" cellspacing="2" cellpadding="2" width="98%"
        class="Grid">
        <tbody>
            <tr>
                <td>Arrival Date:
                </td>
                <td>
                    <asp:TextBox ID="txtArrivael_Date" ValidationGroup="s" runat="server"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender Format="MM/dd/yyyy" ID="CalendarExtender4" Animated="true" PopupPosition="TopRight"
                        runat="server" Enabled="True" TargetControlID="txtArrivael_Date"></ajaxToolkit:CalendarExtender>
                    <asp:CompareValidator Operator="DataTypeCheck" Type="Date" SetFocusOnError="true"
                        CssClass="red-txt" ID="CompareValidator7" runat="server" ControlToValidate="txtArrivael_Date"
                        ValidationGroup="s" ToolTip="Please validate entered date as month/day/year format."
                        ErrorMessage=""><img runat="server"  src="~/App_Themes/admin/images/warning.png" alt="warning" /></asp:CompareValidator>
                </td>
                <td>Workshop (in UAE):
                </td>
                <td>
                    <asp:DropDownList ID="ddlWorkshop_ID" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Workshop Entry Date
                </td>
                <td>
                    <asp:TextBox ID="txtWorkshopEntryDate" ValidationGroup="s" runat="server"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender Format="MM/dd/yyyy" ID="CalendarExtender2" Animated="true" PopupPosition="TopRight"
                        runat="server" Enabled="True" TargetControlID="txtWorkshopEntryDate"></ajaxToolkit:CalendarExtender>
                    <asp:CompareValidator Operator="DataTypeCheck" Type="Date" SetFocusOnError="true"
                        CssClass="red-txt" ID="CompareValidator8" runat="server" ControlToValidate="txtWorkshopEntryDate"
                        ValidationGroup="s" ToolTip="Please validate entered date as month/day/year format."
                        ErrorMessage=""><img runat="server"  src="~/App_Themes/admin/images/warning.png" alt="warning" /></asp:CompareValidator>
                </td>
                <td>Workshop Exit Date
                </td>
                <td>
                    <asp:TextBox ID="txtWorkshopExitDate" ValidationGroup="s" runat="server"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender Format="MM/dd/yyyy" ID="CalendarExtender3" Animated="true" PopupPosition="TopRight"
                        runat="server" Enabled="True" TargetControlID="txtWorkshopExitDate"></ajaxToolkit:CalendarExtender>
                    <asp:CompareValidator Operator="DataTypeCheck" Type="Date" SetFocusOnError="true"
                        CssClass="red-txt" ID="CompareValidator9" runat="server" ControlToValidate="txtWorkshopExitDate"
                        ValidationGroup="s" ToolTip="Please validate entered date as month/day/year format."
                        ErrorMessage=""><img runat="server"  src="~/App_Themes/admin/images/warning.png" alt="warning" /></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>Store:
                </td>
                <td>
                    <asp:DropDownList ID="ddlStores" runat="server">
                    </asp:DropDownList>
                </td>
                <td>
                    <!--Transport Co.:-->
                </td>
                <td></td>
            </tr>
        </tbody>
    </table>
    <br />
    <!-- car cost -->
    <table cellspacing="0" cellpadding="0" border="0" width="98%">
        <tr>
            <td class="innerContentHead">Car Cost
            </td>
        </tr>
    </table>
    <table style="border-collapse: collapse;" cellspacing="2" cellpadding="2" width="98%"
        class="Grid">
        <tbody>
            <tr>
                <td width="15%">Purchasing Price:
                </td>
                <td width="35%">
                    <!-- real_price -->
                    <asp:TextBox ID="txtreal_price" ValidationGroup="s" runat="server"></asp:TextBox>
                </td>
                <td width="15%">Cost:
                </td>
                <td>
                    <!-- expenses -->
                    <asp:TextBox ID="txtCost" ValidationGroup="s" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Reserved for:
                </td>
                <td>
                    <asp:TextBox ID="txtSaleTo" ValidationGroup="s" runat="server"></asp:TextBox>
                </td>
                <td>Sale Date:
                </td>
                <td>
                    <asp:TextBox ID="txtSaleDate" ValidationGroup="s" runat="server"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender Format="MM/dd/yyyy" ID="CalendarExtender5" Animated="true" PopupPosition="TopRight"
                        runat="server" Enabled="True" TargetControlID="txtSaleDate"></ajaxToolkit:CalendarExtender>
                    <asp:CompareValidator Operator="DataTypeCheck" Type="Date" SetFocusOnError="true"
                        CssClass="red-txt" ID="CompareValidator10" runat="server" ControlToValidate="txtSaleDate"
                        ValidationGroup="s" ToolTip="Please validate entered date as month/day/year format."
                        ErrorMessage=""><img runat="server"  src="~/App_Themes/admin/images/warning.png" alt="warning" /></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>Sale Price
                </td>
                <td>
                    <asp:TextBox ID="txtSalePrice" ValidationGroup="s" runat="server"></asp:TextBox>
                </td>
                <td>Currency:
                </td>
                <td>
                    <asp:DropDownList ID="ddlCurrency" runat="server">
                    </asp:DropDownList>
                    <%-- &nbsp;<asp:RequiredFieldValidator  SetFocusOnError="true" CssClass="red-txt" ID="RequiredFieldValidator22" runat="server" 
                    ControlToValidate="ddlCurrency" ValidationGroup="s" InitialValue=""
                    ErrorMessage=""><img runat="server"  src="~/App_Themes/admin/images/warning.png" alt="warning" /></asp:RequiredFieldValidator>--%>
                </td>
            </tr>
            <tr>
                <td valign="top">Remarks:
                </td>
                <td colspan="3">
                    <asp:TextBox ID="txtRemarks" ValidationGroup="s" runat="server" TextMode="MultiLine"
                        Height="100" Width="740px"></asp:TextBox>
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
        </tbody>
    </table>
    <!-- end car cost -->
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
            $(document).ready(function () {
                $('select[id$=ddlRegion_ID]').bind("change keyup", function () {
                    var selectesTxt = $('select[id$=ddlRegion_ID] :selected').text();
                    var n = selectesTxt.lastIndexOf(':');
                    var target = selectesTxt.substring(n + 1);
                    $('#ContentPlaceHolder1_divYardCostVal').html(target + " $");  //.replace(/^.*-(.*)$/m, '$0'));
                    $('#ContentPlaceHolder1_divYardCostlbl').html("Yard Cost:");
                });
                $("input[id$=txtchassis_no]").blur(function () {
                    var itmVal = $("input[id$=txtchassis_no]").val();
                    if (itmVal.length > 3 && window.location.pathname.indexOf("/CarsAddEdit.aspx") > 0) {
                        $.ajax({
                            type: "POST",
                            url: "CarsAddEdit.aspx/FetchChassis",
                            data: "{\"chss\":\"" + itmVal + "\"}",
                            dataType: "json",
                            contentType: "application/json",
                            success: function (response) {
                                if (response.d != false) { // <== if chassis no already exist.
                                    alert("This Chassis was added before, please choose a new one.");
                                }
                            },
                            error: function (XMLHttpRequest, textStatus, errorThrown) {
                                alert(textStatus);
                            }
                        }); // end ajax
                    } // end if.
                }); // end blur
            });  // end document
        }
    </script>
</asp:Content>
