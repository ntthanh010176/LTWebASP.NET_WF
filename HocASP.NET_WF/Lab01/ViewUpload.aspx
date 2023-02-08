<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewUpload.aspx.cs" Inherits="Lab01.ViewUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin:0 auto; width:700px;border:2px solid #860887">
             <div style="background-color:#860887;text-align:center">
                 <asp:LinkButton ID="lbtUpload" runat="server" ForeColor="#ffffff" OnClick="lbtUpload_Click">Upload tập tin</asp:LinkButton>
                 &nbsp;&nbsp;
                 <asp:LinkButton ID="lbtXemUpload" runat="server" ForeColor="#ffffff" OnClick="lbtXemUpload_Click">Xem các tập tin upload</asp:LinkButton>
             &nbsp;
             </div>
            <asp:MultiView ID="mtvUploadXemUpload" runat="server">
                <asp:View ID="vUpload" runat="server">
                  <div style="text-align:center;padding:20px">
                     Chọn tập tin: <asp:FileUpload ID="FUpload" runat="server" /> <br />
                    <asp:Button ID="btUpload" runat="server" Text="Upload" OnClick="btUpload_Click" /> <br />
                      <asp:Label ID="lbThongbao" runat="server" ForeColor="#cc3300" Text=""></asp:Label>
                      
                  </div>
                </asp:View>
                <asp:View ID="vXemUpload" runat="server">
                    <div style="padding:10px">
                        <asp:ListBox ID="lstFile" runat="server" Rows="10" Width="100%"></asp:ListBox>
                    </div>
                </asp:View>
               
            </asp:MultiView>

        </div>
    </form>
</body>
</html>
