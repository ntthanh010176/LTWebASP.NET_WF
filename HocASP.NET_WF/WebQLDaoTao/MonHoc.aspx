<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MonHoc.aspx.cs" Inherits="WebQLDaoTao.MonHoc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="gvMonHoc" runat="server" AutoGenerateColumns="false" PageSize="5" AllowPaging="true"
                 OnRowEditing="gvMonHoc_RowEditing" DataKeyNames="mamh"
                 OnRowCancelingEdit="gvMonHoc_RowCancelingEdit" OnRowUpdating="gvMonHoc_RowUpdating"
                OnRowDeleting="gvMonHoc_RowDeleting"
                OnPageIndexChanging="gvMonHoc_PageIndexChanging"
                >
                 <Columns>                    
                     <asp:BoundField HeaderText="tên môn" DataField="Tenmh" />
                      <asp:BoundField HeaderText="số tiết" DataField="sotiet" />
                     <asp:TemplateField>
                         <ItemTemplate>
                             <asp:Button ID="btSua" runat="server" Text="Sửa" CommandName="Edit" />
                             <asp:Button ID="btXoa" runat="server" Text="Xoá" OnClientClick="return confirm('Bạn có đồng ý xoá môn học này?')" CommandName="Delete" />
                         </ItemTemplate>
                         <EditItemTemplate>
                               <asp:Button ID="btGhi" runat="server" Text="Ghi" CommandName="Update" />
                               <asp:Button ID="btKhong" runat="server" Text="Không" CommandName="Cancel" />
                         </EditItemTemplate>
                     </asp:TemplateField>
                 </Columns>
            </asp:GridView>
            <asp:Label ID="lbthongbao" runat="server" ForeColor="#cc3300" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
