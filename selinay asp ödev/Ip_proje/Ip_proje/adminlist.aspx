<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlist.aspx.cs" Inherits="Ip_proje.adminlist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="social-login">
                <script type="text/javascript">
				function confirmLeave()
				{
					return confirm("Ana sayfaya dönmek istediğinizden emin misiniz?");
    }
                </script>
            <asp:Button ID="btn_Login" runat="server" Text="Çıkış Yap" OnClientClick="return confirmLeave();" CssClass="btn btn-primary btn-block" OnClick="btn_Login_Click"  />
        </div>
        <div class ="left-margin form-group"  style="display: flex;">
        
        <asp:GridView ID="GridView1" runat="server" CssClass="form-control" style="width: 1000px; height: 40px;" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" HorizontalAlign="Center"/>
            <SortedAscendingHeaderStyle BackColor="#6D95E1" HorizontalAlign="Center"/>
            <SortedDescendingCellStyle BackColor="#E9EBEF" HorizontalAlign="Center"/>
            <SortedDescendingHeaderStyle BackColor="#4870BE" HorizontalAlign="Center"/>
        </asp:GridView>
            </div>
    </form>
</body>
</html>
