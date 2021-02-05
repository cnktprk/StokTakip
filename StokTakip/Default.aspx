<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StokTakip.Default" %>


<!DOCTYPE html>

<html lang="tr">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %> - My ASP.NET Uygulaması</title>

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>
    <link href="Content/style.css" rel="stylesheet" />
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <link href="Content/mySettings/css/mystyle.min.css" rel="stylesheet" />
    <link href="Content/mySettings/fontawesome-free/css/all.min.css" rel="stylesheet" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />

</head>
<body class="hold-transition dark-mode sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">
    <form runat="server">
        <div class="wrapper">
            <nav class="main-header navbar navbar-expand navbar-dark">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a href="Login.aspx" class="nav-link">
                            <i class="nav-icon fas fa-sign-in-alt"> Giriş Yap
                            </i>
                        </a>
                    </li>
                </ul>
            </nav>
            <aside class="main-sidebar sidebar-dark-primary elevation-4">
                <a href="#" class="brand-link">
                    <img src="Content/mySettings/img/NLogo.png" alt="NizStokTakip" class="brand-image " style="opacity: .8">
                </a>
            </aside>
            <div class="content-wrapper">
                <div class="content-header">
                    <div class="container-fluid">
                        <div class="container body-content">
                            <h1 style="color:red">Sisteme Giriş Yapmadan Verilere Erişemezsiniz.</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>