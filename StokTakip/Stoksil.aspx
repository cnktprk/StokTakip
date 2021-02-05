<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Stoksil.aspx.cs" Inherits="StokTakip.Stoksil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="content">
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Stok Sil</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="Arayuz.aspx">Anasayfa</a></li>
                            <li class="breadcrumb-item active">Stok Sil</li>
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
                                                <h3 class="mb-0">Ürün Ara</h3>
                                            </div>
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-11">
                                                        <div class="form-group">
                                                            <asp:TextBox ID="BulUrunAd" runat="server" CssClass="form-control"></asp:TextBox>
                                                            <span class="form-text small text-muted">Ürün Adı ile arama yapınız.
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <div class="col-1">
                                                        <div class="form-group">
                                                            <asp:Button ID="UrunBul" runat="server" CssClass="btn btn-success btn-md" Text="Ürün Bul" OnClick="UrunBul_Click" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-12 ml-1 pl-4 pr-2">
                                                    <div class="form-group">
                                                        <asp:GridView ID="BulGrid" runat="server" CssClass="table table-bordered table-hover" AutoGenerateColumns="False">
                                                            <Columns>
                                                                <asp:BoundField DataField="barkodNo" HeaderText="Barkod Numarası" InsertVisible="False" ReadOnly="False"
                                                                    SortExpression="barkodNo" />
                                                                <asp:BoundField DataField="urunMarka" HeaderText="Ürün Markası" SortExpression="urunMarka" />
                                                                <asp:BoundField DataField="urunAdi" HeaderText="Ürün Adı" SortExpression="urunAdi" />
                                                                <asp:BoundField DataField="urunFiyat" HeaderText="Ürün Fiyatı" SortExpression="urunFiyat" DataFormatString="{0:C2}" />
                                                                <asp:BoundField DataField="stokAdet" HeaderText="Stok Adedi" SortExpression="stokAdet" />
                                                            </Columns>
                                                        </asp:GridView>
                                                        <asp:SqlDataSource ID="SqlDataSource" runat="server"
                                                            ConnectionString="<%$ ConnectionStrings:StokVeriTabaniConnectionString %>"
                                                            SelectCommand="SELECT [barkodNo], [urunMarka], [urunAdi], [urunFiyat], [stokAdet] FROM [StokListesi] WHERE ([urunAdi] = @urunAdi)">
                                                            <SelectParameters>
                                                                <asp:QueryStringParameter Name="urunAdi" QueryStringField=" " Type="String" />
                                                            </SelectParameters>
                                                        </asp:SqlDataSource>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-header">
                                    <h3 class="mb-0">Ürün Sil</h3>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-11">
                                            <div class="form-group">
                                                <asp:TextBox ID="gunUrunBarkod" runat="server" CssClass="form-control"></asp:TextBox>
                                                <span class="form-text small text-muted">Ürün Barkodu ile silme işlemi yapınız.
                                                </span>
                                            </div>
                                        </div>
                                        <div class="col-1">
                                            <div class="form-group">
                                                <asp:Button ID="UrunSil" runat="server" CssClass="btn btn-success btn-md" Text="Ürün Sil" OnClick="UrunSil_Click" />
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
