<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="Tech_In_System.Usuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Cabecera usuarios
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="right_col" role="main">
        <div class="page-title">
            <div class="col-md-6 col-sm-6 col-xs-12 col-sm-offset-3">
                <h3>Nuevo Producto</h3>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="container">
            <div class="row">

                <div class="col-md-6 col-sm-6 col-xs-12 col-sm-offset-3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                        AutoGenerateEditButton="True" CellPadding="4" ForeColor="#333333" GridLines="None"
                        DataKeyNames="id"
                        OnRowEditing="GridView1_RowEditing"
                        OnRowCancelingEdit="GridView1_RowCancelingEdit"
                        OnRowUpdating="GridView1_RowUpdating" OnDataBound="RowDataBound">
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:TemplateField HeaderText="Categoria">
                                <EditItemTemplate>
                                    <asp:Label ID="lblCat" runat="server" Text='<%# Eval("Categoria") %>' Visible="false"></asp:Label>
                                    <asp:DropDownList ID="ddlCategoria" runat="server">
                                    </asp:DropDownList>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblCat" runat="server" Text='<%# Eval("Categoria") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Producto" HeaderText="Producto" />
                            <asp:BoundField DataField="EstadoProducto" HeaderText="EstadoProducto" SortExpression="EstadoProducto" />
                            <asp:BoundField DataField="IdProducto" HeaderText="IdProducto" InsertVisible="False" ReadOnly="True" SortExpression="IdProducto" />
                        </Columns>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
