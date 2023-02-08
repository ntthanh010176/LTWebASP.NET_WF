<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Panels.aspx.cs" Inherits="Lab01.Panels" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="plSoThichNgheNghiep"  GroupingText="Sở thích và nghề nghiệp" runat="server">
               <div style="float:left; margin-right:10px;width:50%">
                <asp:Panel ID="plSothich" BackColor="#e1fff0" GroupingText="Sở thích" runat="server">
                    <asp:CheckBox ID="chkST1" Text="Bóng đá" runat="server" />
                    <br />
                    <asp:CheckBox ID="chkST2" Text="Xem phim" runat="server"  /> <br />
                    <asp:CheckBox ID="chkST3" Text="Kinh doanh" runat="server" />
                </asp:Panel>
              </div>
               <div style="float:left;width:45%">
                <asp:Panel ID="plNghenghiep" Height="200px" ScrollBars="Vertical" GroupingText="Nghề nghiệp" runat="server">
                    <asp:BulletedList ID="blNgheNghiep" runat="server"></asp:BulletedList>
                </asp:Panel> 
               </div>

                <div style="clear:both">
                    <asp:CheckBox ID="chkSoThich" AutoPostBack="true" Checked="true" Text="Hiển thị sở thích" runat="server" /> <br />
                    <asp:CheckBox ID="chkNghenghiep" AutoPostBack="true" Checked="true" Text="Hiển thị nghề nghiệp" runat="server" />
                </div>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
