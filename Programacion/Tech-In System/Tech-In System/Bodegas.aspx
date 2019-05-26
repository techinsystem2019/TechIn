<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Bodegas.aspx.cs" Inherits="Tech_In_System.Bodegas" %>

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
                                        <h3>Listado de Bodegas</h3>
                                    </div>
                                </div>
                                <br />
                                <div class="form-group">
                                    <div class="col-md-8 col-sm-8 col-xs-12 col-md-offset-2 col-sm-offset-2">
                                        <asp:gridview ID="gvw_Bodega" runat="server" class="table" AutoGenerateColumns="False" DataKeyNames="IdBodega" DataSourceID="SqlDataSource1">
                                            <Columns>
                                                <asp:CommandField ShowEditButton="True">
                                                <ControlStyle CssClass="btn" />
                                                </asp:CommandField>
                                                <asp:BoundField DataField="IdBodega" HeaderText="IdBodega" InsertVisible="False" ReadOnly="True" SortExpression="IdBodega" />
                                                <asp:BoundField DataField="Bodega" HeaderText="Bodega" SortExpression="Bodega" />
                                                <asp:BoundField DataField="DireccionBodega" HeaderText="DireccionBodega" SortExpression="DireccionBodega" />
                                                <asp:BoundField DataField="TelefonoBodega" HeaderText="TelefonoBodega" SortExpression="TelefonoBodega" />
                                                <asp:BoundField DataField="EstadoBodega" HeaderText="EstadoBodega" SortExpression="EstadoBodega" />
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
                                        </asp:gridview>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechInConnectionString %>" SelectCommand="MostrarBodegas" SelectCommandType="StoredProcedure" UpdateCommand="EditarBodegas" UpdateCommandType="StoredProcedure">
                                            <UpdateParameters>
                                                <asp:Parameter Name="bodega" Type="String" />
                                                <asp:Parameter Name="direccionbodega" Type="String" />
                                                <asp:Parameter Name="telefonobodega" Type="String" />
                                                <asp:Parameter Name="estadobodega" Type="Int32" />
                                                <asp:Parameter Name="idbodega" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-8 col-sm-8 col-xs-12 col-md-offset-2 col-sm-offset-2">
                                        <asp:button id="nueva_bod" runat="server" text="Nueva Bodega" class="btn btn-primary" OnClick="nueva_bod_Click" />
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
