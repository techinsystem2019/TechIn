using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;

namespace Tech_In_System
{
    public partial class NuevaCategoria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void guardar_cat_Click(object sender, EventArgs e)
        {
            try
            {
                CN_TechIn objetoCN2 = new CN_TechIn();
                objetoCN2.InsertarCategorias(txtCategoria.Text, "1");
                //Lbl_Categoria.Text = "Se insertó correctamente";
                LimpiarCategoria();
                Response.Redirect("Categorias.aspx");
            }
            catch (Exception)
            {

            }
        }

        private void LimpiarCategoria()
        {
            txtCategoria.Text = "";
        }
    }
}