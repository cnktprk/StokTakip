<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Stokekle.aspx.cs" Inherits="StokTakip.Stokduzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="content">
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Stok Güncelle</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="Arayuz.aspx">Anasayfa</a></li>
                            <li class="breadcrumb-item active">Stok Güncelle</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="tab-content">
                                    <div class="active tab-pane" id="activity">
                                        <div class="post">
                                            <div class="card-header">
                                                <h3 class="mb-0">Yeni Ürün Ekle</h3>
                                            </div>
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-6">
                                                        <div class="form-group">
                                                            <label for="urunMarka">Ürün Markası</label>
                                                            <asp:TextBox ID="urunMarkaTbx" runat="server" CssClass="form-control"></asp:TextBox>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="urunAd">Ürün Adı</label>
                                                            <asp:TextBox ID="urunAdTbx" runat="server" CssClass="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-6">
                                                        <div class="form-group">
                                                            <label for="urunFiyat">Ürün Fiyatı</label>
                                                            <asp:TextBox ID="urunFiyatTbx" runat="server" CssClass="form-control"></asp:TextBox>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="stokAdedi">Stok Adedi</label>
                                                            <asp:TextBox ID="stokAdediTbx" runat="server" CssClass="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Button ID="UrunEkle" runat="server" CssClass="btn btn-success btn-md float-right" Text="Ürün Ekle" OnClick="UrunEkle_Click" />
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
