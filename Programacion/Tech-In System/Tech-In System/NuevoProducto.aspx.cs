using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;

namespace Tech_In_System
{
    public partial class NuevoProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void guardar_prod_Click(object sender, EventArgs e)
        {
            try
            {
                CN_TechIn objetoCN2 = new CN_TechIn();
                objetoCN2.InsertarProductos(dlCategoria.Text, txtProducto.Text, "1");
                Lbl_Categoria.Text = "Se insertó correctamente";
                LimpiarProductos();
                Response.Redirect("Productos.aspx");
            }
            catch (Exception)
            {
               
            }
        }

        private void LimpiarProductos()
        {
            txtProducto.Text = "";
        }
    }
}