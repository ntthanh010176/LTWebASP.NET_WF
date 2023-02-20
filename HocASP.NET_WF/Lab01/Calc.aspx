<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calc.aspx.cs" Inherits="Lab01.Calc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 500px;
        }
        .auto-style2 {
            width: 133px;
        }
        .auto-style3 {
            color: #003399;
            text-align: center;
            font-size: large;
        }
    </style>    
</head>
<body>
    <form id="form1" runat="server">
        <div>
             
            <table align="center" cellpadding="5" cellspacing="0" class="auto-style1">
                <tr>
                    <td colspan="2" class="auto-style3"><strong>TÍNH TOÁN ĐƠN GIẢN</strong></td>
                </tr>
                <tr>
                    <td class="auto-style2">Nhập số thứ 1</td>
                    <td>
                        <asp:TextBox ID="txtNum1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNum1" runat="server" ControlToValidate="txtNum1" ErrorMessage="Bạn chưa nhập số thứ 1" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvNum1" runat="server" ControlToValidate="txtNum1" ErrorMessage="Số thứ 1 phải là  kiểu số" ForeColor="Red" Operator="DataTypeCheck" Type="Double">(*)</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Nhập số thứ 2</td>
                    <td>
                        <asp:TextBox ID="txtNum2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNum2" runat="server" ControlToValidate="txtNum2" ErrorMessage="Bạn chưa nhập số thứ 2" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvNum2" runat="server" ControlToValidate="txtNum2" ErrorMessage="Số thứ 2 phải là  kiểu số" ForeColor="Red" Operator="DataTypeCheck" Type="Double">(*)</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnTong" runat="server" Text="Tính tổng" OnClick="btnTong_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Kết quả</td>
                    <td>
                        <asp:TextBox ID="txtResult" ReadOnly="true" runat="server"></asp:TextBox>
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
