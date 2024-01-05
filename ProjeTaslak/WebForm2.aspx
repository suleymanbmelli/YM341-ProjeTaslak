<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="ProjeTaslak.WebForm2" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>VOOT</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <div class="signup-form">
    <form action="index.html" runat="server">
      <h1>Giriş Formu</h1>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
      <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
      <input type="submit" value="Giriş yap" class="signup-btn">
      <input type="submit" value="Admin Girişi" class="signup-btn">
    </form>
  </div>
</body>
</html>
