<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="NuevaMarca.aspx.cs" Inherits="Tech_In_System.NuevaMarca" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Nueva bodega-->
    <div class="right_col" role="main">
        <div>
            <div class="page-title">
                <div class="text-center">
                    <h3>Nueva Marca</h3>
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
                                    <asp:TextBox ID="txtMarca" runat="server" placeholder="NOMBRE DE LA MARCA" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                </div>
                            </div>
                            <div class="ln_solid"></div>
                            <div class="form-group">
                                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3 col-sm-offset-3">
                                    &nbsp;<asp:Button ID="volver_prod" runat="server" Text="Volver" class="btn btn-danger" />
                                    <asp:Button ID="guardar_marca" runat="server" Text="Guardar" class="btn btn-success" OnClick="guardar_marca_Click"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
