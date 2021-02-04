<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Stoklistesi.aspx.cs" Inherits="StokTakip.Stoklistesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Content Wrapper. Contains page content -->
    <div class="content">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Stok Listesi</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="Arayuz.aspx">Anasayfa</a></li>
                            <li class="breadcrumb-item active">Stok Listesi</li>
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
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title font-weight-bold">GÜNCEL STOK LİSTESİ</h3>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body">
                                <table id="example2" class="table table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>Barkod No</th>
                                            <th>Ürün Markası</th>
                                            <th>Ürün Adı</th>
                                            <th>Ürün Fiyatı</th>
                                            <th>Stok Adedi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Trident</td>
                                            <td>Internet
                      Explorer 4.0
                                            </td>
                                            <td>Win 95+</td>
                                            <td>4</td>
                                            <td>X</td>
                                        </tr>
                                        <tr>
                                            <td>Trident</td>
                                            <td>Internet
                      Explorer 5.0
                                            </td>
                                            <td>Win 95+</td>
                                            <td>5</td>
                                            <td>C</td>
                                        </tr>
                                        <tr>
                                            <td>Trident</td>
                                            <td>Internet
                      Explorer 5.5
                                            </td>
                                            <td>Win 95+</td>
                                            <td>5.5</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Trident</td>
                                            <td>Internet
                      Explorer 6
                                            </td>
                                            <td>Win 98+</td>
                                            <td>6</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Trident</td>
                                            <td>Internet Explorer 7</td>
                                            <td>Win XP SP2+</td>
                                            <td>7</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Trident</td>
                                            <td>AOL browser (AOL desktop)</td>
                                            <td>Win XP</td>
                                            <td>6</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Gecko</td>
                                            <td>Firefox 1.0</td>
                                            <td>Win 98+ / OSX.2+</td>
                                            <td>1.7</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Gecko</td>
                                            <td>Firefox 1.5</td>
                                            <td>Win 98+ / OSX.2+</td>
                                            <td>1.8</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Gecko</td>
                                            <td>Firefox 2.0</td>
                                            <td>Win 98+ / OSX.2+</td>
                                            <td>1.8</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Gecko</td>
                                            <td>Firefox 3.0</td>
                                            <td>Win 2k+ / OSX.3+</td>
                                            <td>1.9</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Gecko</td>
                                            <td>Camino 1.0</td>
                                            <td>OSX.2+</td>
                                            <td>1.8</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Gecko</td>
                                            <td>Camino 1.5</td>
                                            <td>OSX.3+</td>
                                            <td>1.8</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Gecko</td>
                                            <td>Netscape 7.2</td>
                                            <td>Win 95+ / Mac OS 8.6-9.2</td>
                                            <td>1.7</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Gecko</td>
                                            <td>Netscape Browser 8</td>
                                            <td>Win 98SE+</td>
                                            <td>1.7</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Gecko</td>
                                            <td>Netscape Navigator 9</td>
                                            <td>Win 98+ / OSX.2+</td>
                                            <td>1.8</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Gecko</td>
                                            <td>Mozilla 1.0</td>
                                            <td>Win 95+ / OSX.1+</td>
                                            <td>1</td>
                                            <td>A</td>
                                        </tr>
                                </table>
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
</asp:Content>
