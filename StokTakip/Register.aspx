<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="StokTakip.register" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1">
    <title>Niz Stok Takip</title>
    <link href="Content/style.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js"
        crossorigin="anonymous"></script>
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
</head>

<body class="loginbody">
    <div class="login-box">
        <form id="form1" runat="server">
        <h1>Kayıt Ol</h1>
        <div class="logintextbox">
            <i class="fas fa-user"></i>
            <asp:TextBox ID="kullaniciAdi" CssClass="logintextbox" placeholder="Kullanıcı Adı" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
        </div>
            <asp:RequiredFieldValidator ID="kAdiValidator" ControlToValidate="kullaniciAdi" runat="server" ErrorMessage="Kullanıcı adı boş olamaz." Display="Dynamic"></asp:RequiredFieldValidator>
        <div class="logintextbox">
            <i class="fas fa-lock"></i>
            <asp:TextBox ID="kullaniciSifre" CssClass="logintextbox" placeholder="Kullanıcı Şifre" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
        </div>
            <asp:RequiredFieldValidator ID="kSifreValidator" ControlToValidate="kullaniciSifre" runat="server" ErrorMessage="Kullanıcı şifresi boş olamaz." Display="Dynamic"></asp:RequiredFieldValidator>
        <div class="logintextbox">
            <i class="fas fa-envelope"></i>
            <asp:TextBox ID="kullaniciEmail" CssClass="logintextbox" placeholder="Kullanıcı Eposta" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
        </div>
            <asp:RequiredFieldValidator ID="kEmailValidator" ControlToValidate="kullaniciEmail" runat="server" ErrorMessage="Kullanıcı emaili boş olamaz." Display="Dynamic"></asp:RequiredFieldValidator>

        <div class="kurallar">
            <label><asp:CheckBox ID="kurallar" runat="server"/> Kayıt Kuralları okudum ve kabul ediyorum.</label>
        </div>
            <asp:CustomValidator ID="kurallarValidator" runat="server" ErrorMessage="Kayıt Kurallarını kabul etmelisiniz." ClientValidationFunction = "ValidateCheckBox"></asp:CustomValidator><br />

            <a href="Login.aspx" style="color: white; text-decoration: none; float: right;">GİRİŞ YAP</a>
            <asp:Button ID="kayitButton" CssClass="loginbtn" runat="server" Text="Kayıt Ol" OnClick="kayitButton_Click"/>            
            </form>
    </div>
</body>

</html>

<script type = "text/javascript">
    function ValidateCheckBox(sender, args) {
        if (document.getElementById("<%=kurallar.ClientID %>").checked == true) {
            args.IsValid = true;
        } else {
            args.IsValid = false;
        }
    }
</script>