<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TinhToan.aspx.cs" Inherits="Lab01.TinhToan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style type="text/css">
        .auto-style1 {
            width: 500px;
        }
        .auto-style2 {
            width: 199px;
        }
        .auto-style3 {
            width: 199px;
            text-align: right;
        }
        .auto-style4 {
            text-align: center;
            font-size: x-large;
        }
    </style>
  
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table align="center" cellpadding="5" cellspacing="0">
                <tr>
                    <td class="auto-style4" colspan="2"><strong>MNH HOẠ TÍNH TOÁN ĐƠN GIẢN</strong></td>
                </tr>
                <tr>
                    <td class="auto-style3">Nhập số thứ 1</td>
                    <td>
                        <asp:TextBox ID="txtSo1" runat="server" ></asp:TextBox>                       
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Nhập số thứ 2</td>
                    <td>
                        <asp:TextBox ID="txtSo2" runat="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btCong" runat="server" Text="Cộng"   OnClick="btCong_Click" />
                        <asp:Button ID="btTru" runat="server" Text="Trừ" OnClick="btTru_Click" />
                        <asp:Button ID="btNhan" runat="server" Text="Nhân" OnClick="btNhan_Click" />
                        <asp:Button ID="btChia" runat="server" Text="Chia" OnClick="btChia_Click" />
                        <asp:Button ID="btClear" runat="server" Text="Clear" OnClick="btClear_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Kết quả</td>
                    <td>
                        <asp:TextBox ID="txtKetQua" runat="server" ReadOnly="true" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Label ID="lbLoi" runat="server" Text="" ForeColor="#ff0000"></asp:Label>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
