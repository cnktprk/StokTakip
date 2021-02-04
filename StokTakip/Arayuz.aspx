﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Arayuz.aspx.cs" Inherits="StokTakip.Arayuz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="content">
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Arayüz</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="Arayuz.aspx">Anasayfa</a></li>
                            <li class="breadcrumb-item active">Arayüz</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>

        <section class="content">
            <div class="container-fluid">
                <!-- Info boxes -->
                <div class="row">
                    <div class="col-12 col-sm-6 col-md-3">
                        <div class="info-box">
                            <span class="info-box-icon bg-success elevation-1"><i class="fas fa-shopping-cart"></i></span>

                            <div class="info-box-content">
                                <span class="info-box-text">Toplam Ürün</span>
                                <span class="info-box-number">4,000</span>
                            </div>
                            <!-- /.info-box-content -->
                        </div>
                        <!-- /.info-box -->
                    </div>
                    <!-- /.col -->
                    <div class="col-12 col-sm-6 col-md-3">
                        <div class="info-box mb-3">
                            <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-chevron-down" style="color:white;"></i></span>

                            <div class="info-box-content">
                                <span class="info-box-text">Azalan Ürün</span>
                                <span class="info-box-number">1,000</span>
                            </div>
                            <!-- /.info-box-content -->
                        </div>
                        <!-- /.info-box -->
                    </div>
                    <!-- /.col -->

                    <!-- fix for small devices only -->
                    <div class="clearfix hidden-md-up"></div>

                    <div class="col-12 col-sm-6 col-md-3">
                        <div class="info-box mb-3">
                            <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-times-circle"></i></span>

                            <div class="info-box-content">
                                <span class="info-box-text">Tükenen Ürün</span>
                                <span class="info-box-number">1,000</span>
                            </div>
                            <!-- /.info-box-content -->
                        </div>
                        <!-- /.info-box -->
                    </div>
                    <!-- /.col -->
                    <div class="col-12 col-sm-6 col-md-3">
                        <div class="info-box mb-3">
                            <span class="info-box-icon bg-info elevation-1"><i class="fas fa-layer-group"></i></span>

                            <div class="info-box-content">
                                <span class="info-box-text">Kalan Ürün</span>
                                <span class="info-box-number">2,000</span>
                            </div>
                            <!-- /.info-box-content -->
                        </div>
                        <!-- /.info-box -->
                    </div>
                    <!-- /.col -->
                </div>
            </div>
        </section>
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title font-weight-bold">EN FAZLA BULUNAN ÜRÜNLER</h3>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body">
                                <table id="stokTbl" class="table table-bordered table-hover">
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
                                        <asp:Repeater ID="ArayuzRepeater" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td><%# Eval("barkodNo") %></td>
                                                    <td><%# Eval("urunMarka") %></td>
                                                    <td><%# Eval("urunAdi") %></td>
                                                    <td><%# string.Format("{0:C2}", Eval("urunFiyat")) %></td>
                                                    <td><%# Eval("stokAdet") %></td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </tbody>
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
    </div>
</asp:Content>
