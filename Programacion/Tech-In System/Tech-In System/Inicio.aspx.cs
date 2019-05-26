using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;

namespace Tech_In_System
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MostrarProductos();
        }

        private void MostrarProductos()
        {
            CN_TechIn objetoCN1 = new CN_TechIn();
            grd_prod.DataSource = objetoCN1.MostrarProd();
            //DropDownList1.DataSource = objetoCN1.MostrarProd();
            grd_prod.DataBind();

        }
    }
}