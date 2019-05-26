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

        public void InsertarProductos(string idcategoria, string producto, string estadoproducto)
        {
            objetoCD.InsertarProductos(Convert.ToInt32(idcategoria),producto, Convert.ToInt32(estadoproducto));
        }

        public void EditarProductos(string categoria, string producto, string estadoproducto, string idproducto)
        {
            objetoCD.EditarProductos(categoria, producto, Convert.ToInt32(estadoproducto), Convert.ToInt32(idproducto));
        }

        public void InsertarBodegas(string bodega, string dirbodega, string telbodega, string estadobodega)
        {
            objetoCD.InsertarBodegas(bodega, dirbodega, telbodega, Convert.ToInt32(estadobodega));
        }

        public void InsertarProveedores(string proveedor, string estadoproveedor)
        {
            objetoCD.InsertarProveedores(proveedor, Convert.ToInt32(estadoproveedor));
        }

        public void InsertarTallas(string talla, string estadotalla)
        {
            objetoCD.InsertarProveedores(talla, Convert.ToInt32(estadotalla));
        }
    }
}
