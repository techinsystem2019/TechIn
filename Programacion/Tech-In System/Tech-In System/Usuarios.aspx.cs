using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;
using System.Data;


namespace Tech_In_System
{
    public partial class Usuarios : System.Web.UI.Page
    {
        CN_TechIn objetoCN1 = new CN_TechIn();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.MostrarProductos();
            }
        }

        private void MostrarProductos()
        {

            GridView1.DataSource = objetoCN1.MostrarProd();
            GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            MostrarProductos();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            MostrarProductos();
        }

        protected void RowDataBound(object sender, System.EventArgs e)
        {
            
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string categoria = (GridView1.Rows[e.RowIndex].FindControl("DropDownList1") as DropDownList).SelectedItem.Value;
            string IdProducto = GridView1.DataKeys[e.RowIndex].Value.ToString();

            objetoCN1.EditarProductos(categoria,"Zapatos","1",IdProducto);
            Response.Redirect(Request.Url.AbsoluteUri);
        }
    }
}