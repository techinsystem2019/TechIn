using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;

namespace Tech_In_System
{
    public partial class NuevoProveedor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void guardar_prov_Click(object sender, EventArgs e)
        {
            try
            {
                CN_TechIn objetoCN2 = new CN_TechIn();
                objetoCN2.InsertarProveedores(txtProveedor.Text, "1");
                //Lbl_Categoria.Text = "Se insertó correctamente";
                LimpiarProveedores();
                Response.Redirect("Proveedores.aspx");
            }
            catch (Exception)
            {

            }
        }

        private void LimpiarProveedores()
        {
            txtProveedor.Text = "";
        }

        protected void volver_prod_Click(object sender, EventArgs e)
        {
            Response.Redirect("Proveedores.aspx");
        }
    }
}