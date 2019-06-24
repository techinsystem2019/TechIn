<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Categorias.aspx.cs" Inherits="Tech_In_System.Categorias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- bodega -->

    <div class="right_col" role="main">
        <div>
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                        <div class="x_content">
                            <div class="row">
                                <div class="page-title">
                                    <div class="text-center">
                                        <h3>Listado de Categorias</h3>
                                    </div>
                                </div>
                                <br />
                                <div class="form-group">
                                    <div class="col-md-8 col-sm-8 col-xs-12 col-md-offset-2 col-sm-offset-2">
                                        <asp:GridView ID="gvw_categoria" runat="server" class="table" AutoGenerateColumns="False" DataKeyNames="IdCategoria" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
                                            <Columns>
                                                <asp:CommandField ShowEditButton="True" />
                                                <asp:BoundField DataField="IdCategoria" HeaderText="IdCategoria" InsertVisible="False" ReadOnly="True" SortExpression="IdCategoria" />
                                                <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                                                <asp:BoundField DataField="EstadoCategoria" HeaderText="EstadoCategoria" SortExpression="EstadoCategoria" />
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
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechInConnectionString %>" SelectCommand="MostrarCategorias" SelectCommandType="StoredProcedure" UpdateCommand="EditarCategorias" UpdateCommandType="StoredProcedure">
                                            <UpdateParameters>
                                                <asp:Parameter Name="categoria" Type="String" />
                                                <asp:Parameter Name="estadocategoria" Type="Int32" />
                                                <asp:Parameter Name="idcategoria" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-8 col-sm-8 col-xs-12 col-md-offset-2 col-sm-offset-2">
                                        <asp:button id="nuevo_cate" runat="server" text="Nueva Categoria" class="btn btn-primary" OnClick="nuevo_cate_Click" />
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
