﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tech_In_System
{
    public partial class Proveedores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void nuevo_prov_Click(object sender, EventArgs e)
        {
            Response.Redirect("NuevoProveedor.aspx");
        }
    }
}