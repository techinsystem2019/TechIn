<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Proveedores.aspx.cs" Inherits="Tech_In_System.Proveedores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- bodega -->

    <div class="right_col" role="main">
        <div>
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12" id="gvw_proveedor">
                    <div class="x_panel">
                        <div class="x_content">
                            <div class="row">
                                <div class="page-title">
                                    <div class="text-center">
                                        <h3>Listado de Proveedores</h3>
                                    </div>
                                </div>
                                <br />
                                <div class="form-group">
                                    <div class="col-md-8 col-sm-8 col-xs-12 col-md-offset-2 col-sm-offset-2">
                                        
                                        <asp:GridView ID="Gvw_Proveedor" runat="server" class="table" AutoGenerateColumns="False" DataKeyNames="IdProveedor" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
                                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                            <Columns>
                                                <asp:CommandField ShowEditButton="True" />
                                                <asp:BoundField DataField="IdProveedor" HeaderText="IdProveedor" ReadOnly="True" InsertVisible="False" SortExpression="IdProveedor"></asp:BoundField>
                                                <asp:BoundField DataField="Proveedor" HeaderText="Proveedor" SortExpression="Proveedor"></asp:BoundField>
                                                <asp:BoundField DataField="EstadoProveedor" HeaderText="EstadoProveedor" SortExpression="EstadoProveedor"></asp:BoundField>
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
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:TechInConnectionString %>' SelectCommand="MostrarProveedores" SelectCommandType="StoredProcedure" UpdateCommand="EditarProveedores" UpdateCommandType="StoredProcedure">
                                            <UpdateParameters>
                                                <asp:Parameter Name="proveedor" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="estadoproveedor" Type="Int32"></asp:Parameter>
                                                <asp:Parameter Name="idproveedor" Type="Int32"></asp:Parameter>
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-8 col-sm-8 col-xs-12 col-md-offset-2 col-sm-offset-2">
                                        <asp:button id="nuevo_prov" runat="server" text="Nuevo Proveedor" class="btn btn-primary" OnClick="nuevo_prov_Click" />
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
