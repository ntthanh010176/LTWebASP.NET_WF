<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CauChao.aspx.cs" Inherits="Lab01.CauChao" %>

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
        }
        .auto-style3 {
            width: 95px;
        }
    </style>
    <script>
        function hoilai() {
            return confirm("Bạn có đồng ý thay đổi câu chào?");
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             
        </div>
             
            <table align="center" cellpadding="5" cellspacing="0" class="auto-style1">
                <tr>
                    <td class="auto-style3">Nhập họ tên</td>
                    <td>
                        <asp:TextBox ID="txtHoten" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:LinkButton ID="lnkSend" OnClientClick="return hoilai()" runat="server" OnClick="lnkSend_Click">Thay đổi câu chào</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" class="auto-style2">
                        <asp:Label ID="lbChao" runat="server" ForeColor="#003366" Font-Size="30px" Text="Chào ban!"></asp:Label>
                    </td>
                </tr>
            </table>
             
    </form>
</body>
</html>
