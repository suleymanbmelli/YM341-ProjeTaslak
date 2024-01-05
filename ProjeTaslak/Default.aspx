<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjeTaslak._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">ASP.NET</h1>
            <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
            <p><a href="http://www.asp.net" class="btn btn-primary btn-md">Learn more &raquo;</a></p>
        </section>
        <form id="form1" runat="server">
            <div class="row">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <section class="col-md-4" aria-labelledby="gettingStartedTitle">
                            <h4 id="gettingStartedTitle"><%# Eval("etkinlik_adi") %> -- <%# Eval("etkinlik_tarih") %> -- <%# Eval("etkinlik_saat") %></h4>
                            <p></p>
                            <p>
                                <%# Eval("etkinlik_aciklama") %><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </p>
                        </section>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </form>
    </main>

</asp:Content>
