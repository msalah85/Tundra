<%@ Page Title=".:: Safe Report ::." Language="C#" MasterPageFile="Admin.master"
    AutoEventWireup="true" CodeFile="SafeMainReport.aspx.cs" Inherits="ketmeerAdmin_MainSafeReport"
    ClientIDMode="Static" %>

<%@ MasterType VirtualPath="Admin.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript" language="JavaScript">

        function callPrint(elementId) {
            var printContent = document.getElementById(elementId);
            var printWindow = window.open('', '', 'left=0,top=0,width=1,height=1,toolbar=0,scrollbars=0,status=0');

            printWindow.document.write(printContent.innerHTML);
            printWindow.document.close();
            printWindow.focus();
            printWindow.print();
            printWindow.close();
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <input id="Button1" class="g-btn" type="button" value="Print" onclick="callPrint('divMainSafePrint');" />
    <div id="divMainSafePrint">
        <table width="700" border="0" style="font-family: Arial Black, Arial, verdana !important;
            font-size: 15px; direction: ltr; border: 4px solid #000;" cellspacing="9">
            <tr align="left" valign="top">
                <td>
                    <!-- left top -->
                    <img id="Img1" runat="server" src="~/App_Themes/site-en/images/small.png" width="96"
                        style="float: left; margin-left: 20px;" />
                    <table width="300" border="0" cellspacing="4">
                        <tr>
                            <td colspan="2">
                                <%--<span style="font-weight:bold;font-size:18px;"> TundraMk Cars</span>--%>
                            </td>
                        </tr>
                    </table>
                    <!-- end left top -->
                </td>
                <td valign="bottom">
                    <table width="300" border="0" cellspacing="4">
                        <tr>
                            <td colspan="2">
                                TundraMk Cars
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Store /
                            </td>
                            <td id="divSafeName" runat="server">
                            </td>
                        </tr>
                        <tr>
                            <td width="40%">
                                Date /
                            </td>
                            <td align="left" id="divDate">
                                <%= MinutesuaeConcrete.GetDateOnly(DateTime.Now, "dd/MM/yy") %>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr align="left" valign="top">
                <td colspan="2" align="center">
                    <table width="100%" border="0" style="margin-top: 20px;">
                        <tr>
                            <td align="center">
                                <span style="font-weight: bold; font-size: 22px;">Safe Report </span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table width="100%" border="1" cellspacing="0" cellpadding="5" bordercolor="#000000"
                                    style="margin-top: 10px;">
                                    <tr>
                                        <td width="40%">
                                            Total In Safe /
                                        </td>
                                        <td>
                                            &nbsp;<a href="SafeDebit.aspx" id="divSafeTotal" runat="server"></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Total Incoming /
                                        </td>
                                        <td width="53%" style="width: 63%">
                                            &nbsp; <a href="#payments" id="divTotalPayments" runat="server"></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="21">
                                            Total Expenses /
                                        </td>
                                        <td>
                                            &nbsp; <a href="StoreExpensesView.aspx" id="divTotalExpenses" runat="server"></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="21">
                                            Remaining In Safe /
                                        </td>
                                        <td>
                                            &nbsp; <a href="#divMainSafePrint" id="divRemainderInSafe" runat="server"></a>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr align="left" valign="top">
                <td colspan="2">
                    <!-- left top -->
                    <table width="100%" border="0" cellpadding="5" style="margin-top: 20px;">
                        <tr>
                            <td width="31%">
                                <strong>Accountant</strong>
                            </td>
                            <td width="29%">
                                <strong>Reviewer </strong>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                    <!-- end left top -->
                </td>
            </tr>
        </table>
    </div>
    <input id="Button2" class="g-btn" type="button" value="Print" onclick="callPrint('divMainSafePrint');" />
</asp:Content>
