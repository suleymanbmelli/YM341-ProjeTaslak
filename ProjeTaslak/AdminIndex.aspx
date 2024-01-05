<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminIndex.aspx.cs" Inherits="ProjeTaslak.AdminIndex" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="Log/etkinlik.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
</head>
<body>
    <form id="form1" runat="server">
    <header class="navbar">
        <div class="container">
            <div class="logo">
                <a href="#">VOOT</a>
            </div>
            <nav>
                <ul>
                    <li><a href="anasayfa.html"><i class="fa-solid fa-house"></i></a></li>
                    <li><a href="AdminIndex.Aspx" class="active"><i class="fa-solid fa-calendar-days"></i></a></li>
                    <li><a href="login/logk.aspx"><i class="fa-regular fa-user"></i></a></li>
                    <li>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        <a href="#"><i class="fa-solid fa-arrow-right-from-bracket"></i></a></li>
                </ul>
            </nav>
        </div>
    </header>

    <header class="main">
        <div class="konteynır" style="float:left; margin-left:7%">
                <td> <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label> </td>
                <div class="form-group">
                    <h1>Etkinlik Oluştur</h1>
                    <label for="title">Başlık:</label>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Width="210px"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="date">Tarih:</label>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Date" CssClass="form-control" Width="210px"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="time">Saat:</label>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Time" CssClass="form-control" Width="209px"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="description">Açıklama:</label>
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" CssClass="form-control" Height="116px" Width="210px"></asp:TextBox>
                </div>
                <asp:Button ID="Button1" runat="server" Text="ETKİNLİK OLUŞTUR" OnClick="Button1_Click" CssClass="btn btn-primary" Width="213px" />
                <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>
        </div>
        <div class="konteynır" style="float:left; margin-left:1%">
            <table class="table table-bordered">
                <tr>
                    <th style="text-align: center;">Etkinlik Adı</th>
                    <th style="text-align: center;">Etkinlik Açıklaması</th>
                    <th style="text-align: center;">Etkinlik Zamanı</th>
                </tr>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("etkinlik_adi") %> </td>
                            <td><%# Eval("etkinlik_aciklama") %> </td>
                            <td><%# Eval("etkinlik_tarih") %> -- <%# Eval("etkinlik_saat") %> </td>
                            <td> <asp:HyperLink NavigateUrl='<%# "EtkinlikSil.aspx?kid=" + Label1.Text + "&ID="+ Eval("ID") +"&usr="+Label7.Text %>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink> </td>
                            <td> <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink> </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>
    </header>
    </form>
</body>
</html>
