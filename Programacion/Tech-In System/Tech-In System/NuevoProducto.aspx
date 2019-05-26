<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="NuevoProducto.aspx.cs" Inherits="Tech_In_System.NuevoProducto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="right_col" role="main">
        <div>
            <div class="page-title">
                <div class="text-center">
                    <h3>Nuevo Producto</h3>
                </div>
            </div>
            <div class="clearfix"></div>
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                        <div class="x_content">
                            <br />
                            <div class="form-group">
                                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3 col-sm-offset-3">
                                    <asp:TextBox ID="txtProducto" runat="server" placeholder="NOMBRE DEL PRODUCTO" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3 col-sm-offset-3">
                                    <asp:Label CssClass="font-weight-bold" ID="Lbl_Categoria" runat="server" Text="Label">Categoría</asp:Label>
                                    <asp:DropDownList CssClass="form-control form-control-lg" ID="dlCategoria" runat="server" DataSourceID="SqlDataSource1" DataTextField="Categoria" DataValueField="IdCategoria">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechInConnectionString %>" SelectCommand="MostrarCategorias" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                </div>
                            </div>
                            <div class="ln_solid"></div>
                            <div class="form-group">
                                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3 col-sm-offset-3">
                                    &nbsp;<asp:Button ID="Button1" runat="server" Text="Volver" class="btn btn-danger" />
                                    <asp:Button ID="guardar_prod" runat="server" Text="Guardar" class="btn btn-success" OnClick="guardar_prod_Click" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="content">
                                    <div class="page-title">
                                        <div class="text-center">
                                            <h3>Últimos productos agregados</h3>
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
    <!-- fin bodega-->
</asp:Content>
