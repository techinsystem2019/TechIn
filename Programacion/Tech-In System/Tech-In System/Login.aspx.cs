using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;

namespace Tech_In_System
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                CN_TechIn objetoCN2 = new CN_TechIn();
                if (objetoCN2.Login(TextBox1.Text, TextBox2.Text)>0)
                {
                    Console.WriteLine("Bienvenido");
                }
                else
                {
                    console.WriteLine("Error");
                }
                objetoCN2.Login(TextBox1.Text, TextBox2.Text);
                //Lbl_Categoria.Text = "Se insertó correctamente";
                //LimpiarMarca();
                //Response.Redirect("Marcas.aspx");
            }
            catch (Exception)
            {

            }
        }
    }
}