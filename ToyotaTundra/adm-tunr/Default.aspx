<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="admin_elaf_Default" Async="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../App_Themes/admin/css/StyleSheet.min.css" rel="stylesheet" type="text/css" />
    <title>.:: System Administration Login ::.</title>
    <link type="image/x-icon" href="/favicon.ico" rel="shortcut icon" />
    <script type="text/javascript" language="javascript">
        function focusIt() {
            var itemToFocus = document.getElementById("txtEmail");
            if (itemToFocus != null)
                itemToFocus.focus();
        }
    </script>
</head>
<body onload="focusIt();">
    <form id="form1" runat="server">
        <!-- login box -->
        <table border="0" cellpadding="0" cellspacing="0" width="1000px" class="ContentHolder">
            <tbody>
                <tr>
                    <td class="innerContentHead">
                        <center>Admins Login to Tundra Mk Cars </center>
                    </td>
                </tr>
                <tr>
                    <td style="height: 5px;"></td>
                </tr>
                <tr>
                    <td class="innerPlaceHolder" style="padding-top: 10px;">
                        <center>
                            <table cellpadding="0" border="0">
                                <tbody>
                                    <tr align="center">
                                        <td>
                                            <div class="CyanHead">Login</div>
                                            <div style="width: 350px; height: 5px;"></div>
                                            <div class="CyanBody">
                                                <center>
                                                    <table>
                                                        <tr>
                                                            <td colspan="2" style="height: 10px;">Please enter user name and password to log on the system administration.
                                    <br />
                                                                <br />
                                                                <br />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="Label1" AssociatedControlID="txtEmail" runat="server"
                                                                    Text="User name: " Font-Bold="True"></asp:Label></td>
                                                            <td>
                                                                <asp:TextBox ID="txtEmail" Width="220" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                                                    ControlToValidate="txtEmail" ForeColor="Red" ValidationGroup="login" SetFocusOnError="true"
                                                                    ErrorMessage="*"></asp:RequiredFieldValidator>

                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="Label2" AssociatedControlID="txtPassword" runat="server"
                                                                    Text="Password: " Font-Bold="True"></asp:Label></td>
                                                            <td>
                                                                <asp:TextBox ID="txtPassword" TextMode="Password" Width="220" runat="server"></asp:TextBox><asp:RequiredFieldValidator ValidationGroup="login" SetFocusOnError="true" ForeColor="Red"
                                                                    ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtPassword"></asp:RequiredFieldValidator></td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2" align="center">
                                                                <asp:Label ID="lblError" runat="server" Font-Bold="true" ForeColor="DarkRed"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2" align="center">
                                                                <asp:Button ID="bntLogin" ValidationGroup="login" runat="server" Text="Login now" Width="70px"
                                                                    OnClick="bntLogin_Click" /></td>
                                                        </tr>
                                                    </table>
                                                </center>
                                            </div>
                                        </td>
                                        <td width="15"></td>
                                        <td>

                                            <div class="CyanHead">Password Recovery</div>
                                            <div style="width: 350px; height: 5px;"></div>
                                            <div class="CyanBody">
                                                <center>
                                                    <table>
                                                        <tr>
                                                            <td colspan="2" style="height: 20px;">Please enter your registered email address to receive your username and password in the Inbox of your email.<br />
                                                                <br />
                                                                <br />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="Label3" runat="server" Font-Bold="true" AssociatedControlID="txtRecPass" Text="Email:  "></asp:Label>&nbsp;</td>
                                                            <td>
                                                                <asp:TextBox ID="txtRecPass" Width="220" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                                                    ControlToValidate="txtRecPass" ForeColor="Red" ValidationGroup="rec" SetFocusOnError="true"
                                                                    ErrorMessage="*"></asp:RequiredFieldValidator>

                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">
                                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                                                    ControlToValidate="txtRecPass" CssClass="failureNotification" Display="Dynamic" SetFocusOnError="true" ForeColor="Red"
                                                                    ErrorMessage="Please verify your email address." ValidationGroup="rec"
                                                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                                                <asp:Label ID="lblpassError" runat="server" Font-Bold="true" ForeColor="DarkRed"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">
                                                                <br />
                                                                <br />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">
                                                                <center>
                                                                    <asp:Button ID="btnRecover" ValidationGroup="rec" Width="170px"
                                                                        runat="server" Text="Receive login information" OnClick="btnRecover_Click" /></center>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </center>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </center>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
