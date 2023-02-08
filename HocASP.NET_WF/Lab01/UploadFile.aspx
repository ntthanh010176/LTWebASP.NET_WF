<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadFile.aspx.cs" Inherits="Lab01.UploadFile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 500px;
        }
        .auto-style2 {
            font-size: large;
            text-align: center;
            background-color: #CCFF33;
        }
        .auto-style3 {
            height: 4px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" cellpadding="5" cellspacing="0" class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2"><strong>MINH HOẠ UPLOAD FILE</strong></td>
                </tr>
                <tr>
                    <td>Chọn tập tin</td>
                    <td>
                        <asp:FileUpload ID="FUpload" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style3">
                        <asp:Button ID="btXuLy" runat="server" Text="Upload" OnClick="btXuLy_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lbThongbao" ForeColor="#cc3300" Font-Bold="true" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>
