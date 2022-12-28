<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dondathang.aspx.cs" Inherits="Lab01.Dondathang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 600px;
        }
        .auto-style2 {
            text-align: center;
            font-size: xx-large;
            background-color: #C6FFC6;
        }
        .auto-style3 {
            width: 260px;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            font-weight: bold;
        }
    </style>
    <link href="css/main.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" cellpadding="7" cellspacing="0" class="auto-style1">
                <tr>
                    <td colspan="2" class="auto-style2"><strong>ĐƠN ĐẶT HÀNG&nbsp;</strong></td>                    
                </tr>
                <tr>
                    <td class="auto-style3">Họ tên khách hàng</td>
                    <td>
                        <asp:TextBox ID="txtHoten" Width="100%" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Địa chỉ</td>
                    <td>
                        <asp:TextBox ID="txtDiachi" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Mã số thuế</td>
                    <td>
                        <asp:TextBox ID="txtMST" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="vertical-align:top" class="auto-style3"><strong>Chọn các loại bánh sau:</strong><br />
                        <br />
                        <asp:DropDownList Width="90%" ID="ddlBanh" runat="server">
                            <asp:ListItem>Bánh bò</asp:ListItem>
                            <asp:ListItem>Bánh mì</asp:ListItem>
                            <asp:ListItem>Bánh tiêu</asp:ListItem>
                            <asp:ListItem>Hamburger</asp:ListItem>
                            <asp:ListItem>Bánh su</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        Số lượng
                        <asp:TextBox ID="txtSoluong" runat="server" Width="93px"></asp:TextBox>
&nbsp;(cái)<br />
                        <br />
&nbsp;&nbsp;&nbsp;
                        <strong>
                        <asp:Button ID="btThem" runat="server" Text=">" Width="45px" CssClass="auto-style5" OnClick="btThem_Click" />
                        <br />
                        <br />
                        </strong>
                        <asp:Label ID="lbLoi" runat="server" ForeColor="#FF3300"></asp:Label>
                    </td>
                    <td><strong>Danh sách bánh được đặt:</strong><br />
                        <asp:ListBox Width="85%" Height="200px" ID="lstBanh" runat="server" SelectionMode="Multiple"></asp:ListBox>
                        <asp:ImageButton ImageUrl="~/images/delete.jpg" Width="30px" ID="btXoa" runat="server" OnClick="btXoa_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2">
                        <asp:Button ID="btInhoadon" CssClass="btnIn" runat="server" Text="In hoá đơn" OnClick="btInhoadon_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lbThongtin" ForeColor="#cc3300" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
