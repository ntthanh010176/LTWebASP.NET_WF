<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Lab01.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 600px;
        }
        .auto-style2 {
            width: 234px;
        }
        .auto-style3 {
            text-align: center;
            font-size: x-large;
            background-color: #CCFFCC;
        }
        .auto-style4 {
            width: 234px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table align="center" cellpadding="5" cellspacing="0" class="auto-style1">
                <tr>
                    <td class="auto-style3" colspan="2"><strong>ĐĂNG KÝ THÀNH VIÊN&nbsp;</strong></td>
                </tr>
                <tr>
                    <td class="auto-style4">Tên đăng nhập</td>
                    <td>
                        <asp:TextBox ID="txtTenDN" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTenDN" runat="server" ErrorMessage="Tên đăng nhập phải có" Text="(*)" ControlToValidate="txtTenDN" ForeColor="#ff0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Mật khẩu</td>
                    <td>
                        <asp:TextBox ID="txtMatKhau" TextMode="Password" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvMatkhau" runat="server" ErrorMessage="Chưa nhập mật khẩu" Text="(*)" ControlToValidate="txtMatKhau" ForeColor="#ff0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Mật khẩu nhập lại</td>
                    <td>
                        <asp:TextBox ID="txtMKNL" TextMode="Password" runat="server"></asp:TextBox>
                        <asp:CompareValidator ID="cvMKNL" runat="server" ErrorMessage="Mật khẩu và mật khẩu xác nhận không trùng khớp" ControlToValidate="txtMKNL" ControlToCompare="txtMatKhau" ForeColor="Red">(*)</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Tuổi</td>
                    <td>
                        <asp:TextBox ID="txtTuoi" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="rvTuoi" runat="server" ControlToValidate="txtTuoi" ErrorMessage="Tuổi chỉ trong khoảng [18-70]" ForeColor="Red" MaximumValue="70" MinimumValue="18" Type="Integer">(*)</asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Email</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" Width="230px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email không hợp lệ" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">(*)</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Số điện thoại</td>
                    <td>
                        <asp:TextBox ID="txtSDT" runat="server" Width="205px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="revSDT" runat="server" ControlToValidate="txtSDT" ErrorMessage="Số điện thoại không hợp lệ" ForeColor="Red" ValidationExpression="0\d{9}">(*)</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btDangky" runat="server" Text="Đăng ký" OnClick="btDangky_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="lbThongtin" runat="server" ForeColor="#cc3300" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
