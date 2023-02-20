<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="qlPhongBan.aspx.cs" Inherits="Lab02.qlPhongBan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2 style="text-align:center">Quản lý phòng ban</h2>
           <hr />
            <div style="width:300px;margin:0 auto">
                <asp:Panel ID="Panel1" GroupingText="Phòng ban" runat="server">
                    <div style="padding:10px">
                        <asp:DropDownList ID="ddlPhong" AutoPostBack="true" runat="server" DataSourceID="dsPhong" 
                            DataTextField="TenPhong"
                            DataValueField="MaPhong"></asp:DropDownList>
                    </div>
                </asp:Panel>
            </div>

            <div style="width:80%;margin:0 auto; padding-top:20px">
                <asp:GridView ID="gvNhanVien" runat="server" Width="100%" AutoGenerateColumns="False" DataKeyNames="MaNV" DataSourceID="dsNhanVienTheoPhong" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="MaNV" HeaderText="Mã nhân viên" InsertVisible="False" ReadOnly="True" SortExpression="MaNV" />
                        <asp:BoundField DataField="HoNV" HeaderText="Họ nhân viên" SortExpression="HoNV" />
                        <asp:BoundField DataField="TenNV" HeaderText="Tên nhân viên" SortExpression="TenNV" />
                        <asp:CheckBoxField DataField="Phai" HeaderText="Phái" SortExpression="Phai" />
                        <asp:BoundField DataField="NgaySinh" HeaderText="Ngày sinh" SortExpression="NgaySinh" />
                        <asp:BoundField DataField="NoiSinh" HeaderText="Nơi sinh" SortExpression="NoiSinh" />
                        <asp:BoundField DataField="MaPhong" HeaderText="Mã phòng" SortExpression="MaPhong" />
                        <asp:CommandField ShowDeleteButton="true" ButtonType="Image" DeleteImageUrl="~/Images/delete.gif" />
                    </Columns>
                    <EmptyDataTemplate>
                        <h2>Không có nhân viên</h2>
                    </EmptyDataTemplate>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
            </div>
        </div>

        <asp:SqlDataSource ID="dsPhong" runat="server" 
            ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString %>"
            SelectCommand="SELECT * FROM [Phong]"></asp:SqlDataSource>

        <asp:SqlDataSource ID="dsNhanVienTheoPhong" runat="server" ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString %>" DeleteCommand="DELETE FROM [NhanVien] WHERE [MaNV] = @MaNV" InsertCommand="INSERT INTO [NhanVien] ([HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (@HoNV, @TenNV, @Phai, @NgaySinh, @NoiSinh, @MaPhong)" SelectCommand="SELECT * FROM [NhanVien] WHERE ([MaPhong] = @MaPhong)" UpdateCommand="UPDATE [NhanVien] SET [HoNV] = @HoNV, [TenNV] = @TenNV, [Phai] = @Phai, [NgaySinh] = @NgaySinh, [NoiSinh] = @NoiSinh, [MaPhong] = @MaPhong WHERE [MaNV] = @MaNV">
            <DeleteParameters>
                <asp:Parameter Name="MaNV" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="HoNV" Type="String" />
                <asp:Parameter Name="TenNV" Type="String" />
                <asp:Parameter Name="Phai" Type="Boolean" />
                <asp:Parameter DbType="Date" Name="NgaySinh" />
                <asp:Parameter Name="NoiSinh" Type="String" />
                <asp:Parameter Name="MaPhong" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlPhong" Name="MaPhong" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
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
    </form>
</body>
</html>
