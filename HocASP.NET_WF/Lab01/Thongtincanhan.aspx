<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Thongtincanhan.aspx.cs" Inherits="Lab01.Thongtincanhan" %>

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
            background-color: #CCCCCC;
        }
        .auto-style3 {
            width: 131px;
        }
        .auto-style4 {
            width: 131px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           
            <table align="center" cellpadding="8" cellspacing="0" class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2"><strong>THÔNG TIN CÁ NHÂN</strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Họ tên</td>
                    <td>
                        <asp:TextBox ID="txtTen" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Giới tính</td>
                    <td>
                        <asp:RadioButton ID="rdtNam" GroupName="Gioitinh" runat="server" Text="Nam" Checked="True" />
                        <asp:RadioButton ID="rdtNu" GroupName="Gioitinh" runat="server" Text="Nữ" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Ngoại ngữ</td>
                    <td>
                        <asp:CheckBox ID="chkAnhVan" runat="server" Text="Anh văn" />
                        <asp:CheckBox ID="chkPhapVan" runat="server" Text="Pháp văn" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Thu nhập</td>
                    <td>
                        <asp:RadioButton ID="rdtThuNhapA" Checked="true" GroupName="thunhap" runat="server" Text="Dưới 5 triệu" />
                        <asp:RadioButton ID="rdtThuNhapB" GroupName="thunhap" runat="server" Text="5 đến 10 triệu" />
                        <asp:RadioButton ID="rdtThuNhapC" GroupName="thunhap" runat="server" Text="Trên 10 triệu" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Trình độ</td>
                    <td >
                        <asp:RadioButtonList ID="rdtlTrinhDo" runat="server" 
                             RepeatDirection="Horizontal">
                            <asp:ListItem>Sau đại học</asp:ListItem>
                            <asp:ListItem>Đại học</asp:ListItem>
                            <asp:ListItem Selected="True">Cao đẳng</asp:ListItem> 
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Button ID="btDangKy" runat="server" Text="Đăng ký" OnClick="btDangKy_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Label ID="lbThongtin" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
