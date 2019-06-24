using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using CapaDatos;

namespace CapaNegocio
{
    public class CN_TechIn
    {
        private CD_TechIn objetoCD = new CD_TechIn();
        public DataTable MostrarProd()
        {
            DataTable tabla = new DataTable();
            tabla = objetoCD.MostrarProductos();
            return tabla;
        }

        public DataTable MostrarCategorias()
        {
            DataTable tabla = new DataTable();
            tabla = objetoCD.MostrarCategorias();
            return tabla;
        }

        public void InsertarProductos(string idcategoria, string idbodega, string idproveedor, string producto, string estadoproducto)
        {
            objetoCD.InsertarProductos(Convert.ToInt32(idcategoria), Convert.ToInt32(idbodega), Convert.ToInt32(idproveedor), producto, Convert.ToInt32(estadoproducto));
        }


        public void InsertarBodegas(string bodega, string dirbodega, string telbodega, string estadobodega)
        {
            objetoCD.InsertarBodegas(bodega, dirbodega, telbodega, Convert.ToInt32(estadobodega));
        }

        public void InsertarProveedores(string proveedor, string estadoproveedor)
        {
            objetoCD.InsertarProveedores(proveedor, Convert.ToInt32(estadoproveedor));
        }

        public void InsertarCategorias(string categoria, string estadocategoria)
        {
            objetoCD.InsertarCategorias(categoria, Convert.ToInt32(estadocategoria));
        }

        public void InsertarMarcas(string marca, string estadomarca)
        {
            objetoCD.InsertarMarcas(marca, Convert.ToInt32(estadomarca));
        }

        public void Login(string usuario, string contrasena)
        {
            objetoCD.Login(usuario, contrasena);
        }

        public void InsertarTallas(string talla, string estadotalla)
        {
            objetoCD.InsertarProveedores(talla, Convert.ToInt32(estadotalla));
        }
    }
}
