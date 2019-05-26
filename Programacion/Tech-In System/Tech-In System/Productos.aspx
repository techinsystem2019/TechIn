<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="Tech_In_System.Productos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Cabecera productos</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- page content nuevo evento -->

    <div class="right_col" role="main">
        <div>
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                        <div class="x_content">
                            <div class="row">
                                <div class="page-title">
                                    <div class="text-center">
                                        <h3>Listado de productos</h3>
                                    </div>
                                </div>
                                <br />
                                <div class="form-group">
                                    <div class="col-md-8 col-sm-8 col-xs-12 col-md-offset-2 col-sm-offset-2">
                                        <asp:GridView ID="gvwProducto" runat="server" class="table" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IdProducto" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging">
                                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                            <Columns>
                                                <asp:CommandField ShowEditButton="True">
                                                <ControlStyle CssClass="btn" />
                                                </asp:CommandField>
                                                <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                                                <asp:BoundField DataField="Producto" HeaderText="Producto" SortExpression="Producto" />
                                                <asp:BoundField DataField="EstadoProducto" HeaderText="EstadoProducto" SortExpression="EstadoProducto" />
                                                <asp:BoundField DataField="IdProducto" HeaderText="IdProducto" InsertVisible="False" ReadOnly="True" SortExpression="IdProducto" />
                                            </Columns>
                                            <EditRowStyle BackColor="#999999" BorderColor="#000"/>
                                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechInConnectionString %>" SelectCommand="MostrarProductos" SelectCommandType="StoredProcedure" UpdateCommand="EditarProductos" UpdateCommandType="StoredProcedure">
                                            <UpdateParameters>
                                                <asp:Parameter Name="categoria" Type="String" />
                                                <asp:Parameter Name="producto" Type="String" />
                                                <asp:Parameter Name="estadoproducto" Type="Int32" />
                                                <asp:Parameter Name="idproducto" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-8 col-sm-8 col-xs-12 col-md-offset-2 col-sm-offset-2">
                                        <asp:Button ID="nuevo_prod" runat="server" Text="Nuevo Producto" class="btn btn-primary" OnClick="nuevo_prod_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end page content nuevo evento-->
</asp:Content>
