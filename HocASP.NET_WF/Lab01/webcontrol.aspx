<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webcontrol.aspx.cs" Inherits="Lab01.webcontrol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function xacnhan() {
            return confirm("Bạn có đồng ý gửi lên server?");
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="HyperLink1" NavigateUrl="http://tuoitre.vn"
                Target="_blank" runat="server">Trang tuổi trẻ</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink2"
                ImageUrl="~/images/logo-bao-tuoitre.png" NavigateUrl="http://tuoitre.vn" runat="server">HyperLink</asp:HyperLink>
            <br />
            Họ tên <asp:TextBox ID="txtHoten" MaxLength="30" runat="server"></asp:TextBox>
            <br />
            Ngày sinh : <asp:TextBox ID="txtNgaySinh" TextMode="Date" runat="server"></asp:TextBox>
            <br />
            Mô tả bản thân: <asp:TextBox ID="txtMoTa" TextMode="MultiLine" Rows="10" runat="server"></asp:TextBox>
            <br />
            Mật khẩu <asp:TextBox ID="txtMatKhau" TextMode="Password" runat="server"></asp:TextBox>
            <hr />
            <asp:Button ID="bt1" runat="server" Text="Button 1" />
            <asp:ImageButton ID="imgBt2" OnClientClick="return xacnhan()" OnClick="imgBt2_Click" ImageUrl="~/images/user-icon.png" Width="50px" runat="server" />
            <asp:LinkButton ID="bt3" runat="server">Button 3</asp:LinkButton>
            <br />
            <hr />
            <asp:Label ID="lbChao" ForeColor="#003366" Font-Size="30px" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
