<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ProjeTaslak.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
        <div>
            <table class="table table-bordered">
                <tr>
                    <th style="text-align:center;">Etkinlik Adı</th>
                    <th style="text-align:center;">Etkinlik Açıklaması</th>
                    <th style="text-align:center;">Etkinlik Zamanı</th>
                </tr>
                <asp:Repeater ID="Repeater1" runat="server">
                     <ItemTemplate>
                        <tr>
                            <td> <%# Eval("etkinlik_adi") %> </td>
                            <td> <%# Eval("etkinlik_aciklama") %> </td>
                            <td> <%# Eval("etkinlik_tarih") %> -- <%# Eval("etkinlik_saat") %> </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>
    </form>
</body>
</html>
