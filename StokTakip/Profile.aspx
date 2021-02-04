<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="StokTakip.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Content Wrapper. Contains page content -->
    <div class="content">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Profil</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="Arayuz.aspx">Anasayfa</a></li>
                            <li class="breadcrumb-item active">Profil</li>
                        </ol>
                    </div>
                </div>
            </div>
            <!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-4">

                        <!-- Profile Image -->
                        <div class="card card-primary card-outline">
                            <div class="card-body box-profile">
                                <div class="text-center">
                                    <img class="profile-user-img img-fluid img-circle"
                                        src="Content/mySettings/img/user1-128x128.jpg">
                                </div>
                                <h3 class="profile-username text-center">Nizamettin Şimşek</h3>
                                <ul class="list-group list-group-unbordered mb-3">
                                    <li class="list-group-item">
                                        <b>Pozisyon</b> <p class="float-right">Stok Takip Sorumlusu</p>
                                    </li>
                                    <li class="list-group-item">
                                        <b>Yetkiler</b> <p class="float-right">Stok Takibi</p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-body">
                                <div class="tab-content">
                                    <div class="active tab-pane" id="activity">
                                        <div class="post">

                                            <!-- form card change password -->

                                            <div class="card-header">
                                                <h3 class="mb-0">Şifre Güncelle</h3>
                                            </div>
                                            <div class="card-body">
                                                <div class="form-group">
                                                    <label for="gnclSifreTbx">Güncel Şifre</label>
                                                    <asp:TextBox ID="gnclSifreTbx"  runat="server" CssClass="form-control"></asp:TextBox>
                                                    <span class="form-text small text-muted">Şifrenizi giriniz.
                                                    </span>
                                                </div>
                                                <div class="form-group">
                                                    <label for="yeniSifreTbx">Yeni Şifre</label>
                                                    <asp:TextBox ID="yeniSifreTbx" runat="server" CssClass="form-control"></asp:TextBox>
                                                    <span class="form-text small text-muted">Yeni şifrenizi giriniz.
                                                    </span>
                                                </div>
                                                <div class="form-group">
                                                    <label for="yeniSifre1Tbx">Yeni Şifre Onay</label>
                                                    <asp:TextBox ID="yeniSifre1Tbx" runat="server" CssClass="form-control"></asp:TextBox>
                                                    <span class="form-text small text-muted">Yeni şifrenizi tekrardan giriniz.
                                                    </span>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Button ID="Guncelle" runat="server" CssClass="btn btn-success btn-lg float-right" Text="Güncelle" OnClick="Guncelle_Click" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</asp:Content>
