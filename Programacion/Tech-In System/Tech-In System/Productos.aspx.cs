using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;

namespace Tech_In_System
{
    public partial class Productos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MostrarProductos();
            MostrarProductos1();
        }

        private void MostrarProductos()
        {
            //CN_Productos objetoCN1 = new CN_Productos();
            //grd_prod.DataSource = objetoCN1.MostrarProd();
            //grd_prod.DataBind();
        }

        private void MostrarProductos1()
        {
            CN_TechIn objetoCN1 = new CN_TechIn();
            //grdprod1.DataSource = objetoCN1.MostrarProd();
           // grdprod1.DataBind();
        }

        protected void RowEditing(object sender, GridViewEditEventArgs e)
        {
            //this.grdprod1.EditIndex = e.NewEditIndex;
            CN_TechIn objetoCN1 = new CN_TechIn();
            //grd_prod.DataSource = objetoCN1.MostrarProd();
            //grd_prod.DataBind();
        }

        protected void RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            //this.grdprod1.EditIndex = -1;
            MostrarProductos1();
        }

        protected void RowUpdating(object sender, GridViewUpdatedEventArgs e)
        {
            
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void nuevo_prod_Click(object sender, EventArgs e)
        {
            Response.Redirect("NuevoProducto.aspx");
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvwProducto.PageIndex = e.NewPageIndex;
            MostrarProductos();
        }
    }
}