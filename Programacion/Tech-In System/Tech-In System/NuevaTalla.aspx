<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="NuevaTalla.aspx.cs" Inherits="Tech_In_System.NuevaTalla" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <!-- Nueva bodega-->
    <div class="right_col" role="main">
        <div>
            <div class="page-title">
                <div class="text-center">
                    <h3>Nueva Talla</h3>
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
                                    <asp:TextBox ID="txtTalla" runat="server" placeholder="TALLA EN LETRAS" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                                </div>
                            </div>
                            <div class="ln_solid"></div>
                            <div class="form-group">
                                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3 col-sm-offset-3">
                                    &nbsp;<asp:Button ID="volver_prod" runat="server" Text="Volver" class="btn btn-danger" OnClick="volver_prod_Click" />
                                    <asp:Button ID="guardar_talla" runat="server" Text="Guardar" class="btn btn-success" OnClick="guardar_talla_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
