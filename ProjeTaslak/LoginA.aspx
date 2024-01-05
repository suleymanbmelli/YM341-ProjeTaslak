<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginA.aspx.cs" Inherits="ProjeTaslak.LoginA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<form id="form1" runat="server">
    <div style="width:300px;height:auto;margin:auto; margin-top:20%;">
        <table>
            <tr>
                <td colspan="2" style="text-align:center;">Admin Giriş Ekranı</td>
            </tr>
            <tr>
                <td style="text-align:center;"> Kullanıcı Adı: </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align:center;"> Şifre: </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Giriş" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>
