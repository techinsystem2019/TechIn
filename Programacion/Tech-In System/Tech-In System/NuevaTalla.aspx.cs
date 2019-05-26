using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;

namespace Tech_In_System
{
    public partial class NuevaTalla : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void guardar_talla_Click(object sender, EventArgs e)
        {
            try
            {
                CN_TechIn objetoCN2 = new CN_TechIn();
                objetoCN2.InsertarTallas(txtTalla.Text, "1");
                //Lbl_Categoria.Text = "Se insertó correctamente";
                LimpiarTallas();
                Response.Redirect("Tallas.aspx");
            }
            catch (Exception)
            {

            }
        }

        public void LimpiarTallas()
        {
            txtTalla.Text = "";
        }

        protected void volver_prod_Click(object sender, EventArgs e)
        {
            Response.Redirect("Talla.aspx");
        }
    }
}