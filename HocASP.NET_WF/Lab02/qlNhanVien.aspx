<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="qlNhanVien.aspx.cs" Inherits="Lab02.qlNhanVien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2 style="text-align:center">QUẢN LÝ NHÂN VIÊN</h2>
             <hr />
            <asp:SqlDataSource ID="dsNhanVien" runat="server"
                ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString %>"
                DeleteCommand="DELETE FROM [NhanVien] WHERE [MaNV] = @MaNV"              
                SelectCommand="SELECT * FROM [NhanVien]"
                UpdateCommand="UPDATE [NhanVien] SET [HoNV] = @HoNV, [TenNV] = @TenNV, [Phai] = @Phai, [NgaySinh] = @NgaySinh, [NoiSinh] = @NoiSinh, [MaPhong] = @MaPhong WHERE [MaNV] = @MaNV">
                <DeleteParameters>
                    <asp:Parameter Name="MaNV" Type="Int32" />
                </DeleteParameters>                
                <UpdateParameters>
                    <asp:Parameter Name="HoNV" Type="String" />
                    <asp:Parameter Name="TenNV" Type="String" />
                    <asp:Parameter Name="Phai" Type="Boolean" />
                    <asp:Parameter DbType="Date" Name="NgaySinh" />
                    <asp:Parameter Name="NoiSinh" Type="String" />
                    <asp:Parameter Name="MaPhong" Type="Int32" />
                    <asp:Parameter Name="MaNV" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

          <div style="width:80%;margin:0 auto">
            <asp:GridView ID="gvNhanVien" runat="server" Width="100%" 
                DataSourceID="dsNhanVien" DataKeyNames="manv"
                AutoGenerateColumns="False" CellPadding="4" AllowPaging="true" PageSize="10"
                ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField HeaderText="Mã nhân viên" ReadOnly="true" DataField="MaNV" />
                    <asp:BoundField HeaderText="Họ nhân viên" DataField="HoNV" />
                    <asp:BoundField HeaderText="Tên nhân viên" DataField="tenNV" />
                    <asp:TemplateField HeaderText="Phái">
                        <ItemTemplate>
                            <asp:Label ID="lbPhai" runat="server" Text='<%# (bool)Eval("Phai")==true?"Nam":"Nữ" %>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlPhai" runat="server" SelectedValue='<%# Bind("Phai") %>'>
                                <asp:ListItem Value="True">Nam</asp:ListItem>
                                <asp:ListItem Value="False">Nữ</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderText="Ngày sinh" DataField="Ngaysinh" DataFormatString="{0: dd/MM/yyyy}" />
                    <asp:BoundField DataField="NoiSinh" HeaderText="Nơi sinh"  />
                    <asp:BoundField DataField="MaPhong" HeaderText="Mã phòng" />
                    <asp:CommandField ShowEditButton="true" ButtonType="Button" EditText="Sửa" UpdateText="Lưu" CancelText="Bỏ qua" />  
                    <asp:TemplateField HeaderText="Tác vụ">
                        <ItemTemplate>
                            <asp:Button ID="btXoa" runat="server" 
                                 OnClientClick="return confirm('Bạn có chắc xoá nhân viên?')"
                                 CommandName="Delete" Text="Xoá" />
                        </ItemTemplate>  
                        <EditItemTemplate></EditItemTemplate>
                    </asp:TemplateField>
                </Columns>              
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
              </div>
        </div>
    </form>
</body>
</html>
