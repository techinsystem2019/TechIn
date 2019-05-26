using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;

namespace Tech_In_System
{
    public partial class NuevaBodega : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void guardar_prod_Click(object sender, EventArgs e)
        {
            try
            {
                CN_TechIn objetoCN2 = new CN_TechIn();
                objetoCN2.InsertarBodegas(txtBodega.Text, txtdirBodega.Text, txtTelBodega.Text, "1");
                //Lbl_Categoria.Text = "Se insertó correctamente";
                LimpiarBodegas();
                Response.Redirect("Bodegas.aspx");
            }
            catch (Exception)
            {

            }
        }

        private void LimpiarBodegas()
        {
            txtBodega.Text = "";
            txtdirBodega.Text = "";
            txtTelBodega.Text = "";
        }
    }
}