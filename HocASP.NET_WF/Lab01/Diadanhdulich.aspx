<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Diadanhdulich.aspx.cs" Inherits="Lab01.Diadanhdulich" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 600px;
        }
        .auto-style2 {
            height: 29px;
        }
        .auto-style3 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style4 {
            height: 29px;
            width: 167px;
        }
        .auto-style5 {
            width: 167px;
        }
        .auto-style6 {
            color: #CC3300;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table align="center" cellpadding="5" cellspacing="0" class="auto-style1">
                <tr>
                    <td class="auto-style3" colspan="2"><strong>ĐỊA DANH DU LỊCH</strong></td>
                </tr>
                <tr>
                    <td class="auto-style4" valign="top">Địa danh du lịch</td>
                    <td class="auto-style2">
                        <asp:ListBox ID="lstDiadanh" runat="server" Rows="6" SelectionMode="Multiple" Width="372px"></asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Tổng số địa danh</td>
                    <td class="auto-style2">
                        <strong>
                        <asp:Label ID="lbSoDD" runat="server" Text="" CssClass="auto-style6"></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td>
                        <asp:Button ID="btChon" runat="server" Text="Chọn" OnClick="btChon_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td>
                        <asp:Label ID="lbDiadanh" Font-Size="20px" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
