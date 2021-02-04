<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="StokTakip.login" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1">
<style>
html
{
    background: url(Image/bg.jpg) no-repeat center center fixed;
    background-size: cover;
    width: 100%;
}

#warning-message { display: none; }

@media only screen and (orientation:portrait)
{
    #wrapper { display:none; }
    

    html
    {
        background: url(Image/bgmob.jpg) no-repeat center center fixed;
        background-size: cover;
        height: 100%;
    }       
}


</style>
    <title>Niz Stok Takip</title>
    <link href="Content/style.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js"
        crossorigin="anonymous"></script>
</head>

<body class="loginbody">

    <div class="login-box">
        <form id="form1" runat="server">
        <h1>Giriş Yap</h1>
        <div class="logintextbox">
            <i class="fas fa-user"></i>
            <asp:TextBox ID="kullaniciAdi" CssClass="logintextbox" runat="server" placeholder="Kullanıcı Adı" AutoCompleteType="Disabled"></asp:TextBox>
        </div>
            <asp:RequiredFieldValidator ID="kulAdiValidator" ControlToValidate="kullaniciAdi" runat="server" ErrorMessage="Kullanıcı adı boş olamaz." Display="Dynamic"></asp:RequiredFieldValidator>

        <div class="logintextbox">
            <i class="fas fa-lock"></i>
            <asp:TextBox ID="kullaniciSifre" CssClass="logintextbox" runat="server" placeholder="Kullanıcı Şifre" AutoCompleteType="Disabled"></asp:TextBox>
        </div>
            <asp:RequiredFieldValidator ID="kulSifreValidator" ControlToValidate="kullaniciSifre" runat="server" ErrorMessage="Kullanıcı şifresi boş olamaz." Display="Dynamic"></asp:RequiredFieldValidator>
        <div>
            <asp:CheckBox ID="remember" runat="server" Checked="True" /> Beni Hatırla
            <a href="Register.aspx" style="color: white; text-decoration: none; float: right;">KAYIT OL</a>
        </div>
            <br />
            <asp:Button ID="girisButton" runat="server" CssClass="loginbtn" Text="Giriş Yap" OnClick="girisButton_Click"/>
            <asp:Label ID="Uyari" runat="server" Text=""></asp:Label>
            </form>
    </div>
</body>

</html>