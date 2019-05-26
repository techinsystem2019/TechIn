using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tech_In_System
{
    public partial class Bodegas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void nueva_bod_Click(object sender, EventArgs e)
        {
            Response.Redirect("NuevaBodega.aspx");
        }
    }
}