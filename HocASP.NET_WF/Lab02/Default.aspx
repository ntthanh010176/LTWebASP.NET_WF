<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab02.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <h1 style="text-align:center">DEMO QUẢN LÝ NHÂN VIÊN</h1>
            <hr />
            <div style="width:300px;margin:0 auto">
                <asp:Panel ID="Panel1" runat="server" Font-Bold="true" GroupingText="Chức năng">
                    <div style="padding:20px">
                        <div>
                            <asp:Image ID="Image1" ImageUrl="~/Images/icon_users.gif" runat="server" /> &nbsp;
                            <asp:HyperLink ID="HyperLink1" NavigateUrl="~/qlNhanVien.aspx" runat="server">Quản lý nhân viên</asp:HyperLink>
                        </div>
                         <div>
                             <asp:Image ID="Image2" ImageUrl="~/Images/Group.gif" runat="server" /> &nbsp;
                             <asp:HyperLink ID="HyperLink2" NavigateUrl="~/qlPhongBan.aspx" runat="server">Quản lý phòng ban</asp:HyperLink>
                        </div>
                    </div>
                </asp:Panel>
            </div>
        </div>
    </form>
</body>
</html>
