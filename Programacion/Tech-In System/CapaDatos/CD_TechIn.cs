using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace CapaDatos
{
    public class CD_TechIn
    {
        private CD_Conexion conexion = new CD_Conexion();

        SqlDataReader leer;
        DataTable tabla = new DataTable();
        SqlCommand comando = new SqlCommand();

        public DataTable MostrarProductos()
        {

            //PROCEDIMIENTO
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "MostrarProductos";
            comando.CommandType = CommandType.StoredProcedure;
            leer = comando.ExecuteReader();
            tabla.Load(leer);
            conexion.CerrarConexion();
            return tabla;

            //TRANSACT
            /*comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "Select * from Producto";
            leer = comando.ExecuteReader();
            tabla.Load(leer);
            conexion.CerrarConexion();
            return tabla;*/
        }

        public DataTable MostrarCategorias()
        {

            //PROCEDIMIENTO
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "MostrarCategorias";
            comando.CommandType = CommandType.StoredProcedure;
            leer = comando.ExecuteReader();
            tabla.Load(leer);
            conexion.CerrarConexion();
            return tabla;

            //TRANSACT
            /*comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "Select * from Producto";
            leer = comando.ExecuteReader();
            tabla.Load(leer);
            conexion.CerrarConexion();
            return tabla;*/
        }

        public void InsertarProductos(int idcategoria,int idbodega, int idproveedor, string producto, int estadoproducto)
        {
            comando.Connection = conexion.AbrirConexion();
            //comando.CommandText = "insert into Producto(Nombre,Apellido,Correo, Cedula) values('"+nombre+ "','" + apellido + "','" + correo + "','" + cedula + "')";
            comando.CommandText = "InsertarProductos";
            //comando.CommandType = CommandType.Text;
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@idcategoria", idcategoria);
            comando.Parameters.AddWithValue("@idbodega", idbodega);
            comando.Parameters.AddWithValue("@idproveedor", idproveedor);
            comando.Parameters.AddWithValue("@producto", producto);
            comando.Parameters.AddWithValue("@estadoproducto", estadoproducto);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();

        }

        public void InsertarBodegas(string bodega, string dirbodega, string telbodega, int estadobodega)
        {
            comando.Connection = conexion.AbrirConexion();
            //comando.CommandText = "insert into Bodega(Bodega,DireccionBodega,Correo, Cedula) values('"+nombre+ "','" + apellido + "','" + correo + "','" + cedula + "')";
            comando.CommandText = "InsertarBodegas";
            //comando.CommandType = CommandType.Text;
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@bodega", bodega);
            comando.Parameters.AddWithValue("@direccionbodega", dirbodega);
            comando.Parameters.AddWithValue("@telefonobodega", telbodega);
            comando.Parameters.AddWithValue("@estadobodega", estadobodega);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();

        }

        public void InsertarProveedores(string proveedor, int estadoproveedor)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "InsertarProveedores";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@proveedor", proveedor);
            comando.Parameters.AddWithValue("@estadoproveedor", estadoproveedor);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();

        }

        public void InsertarCategorias(string categoria, int estadocategoria)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "InsertarCategorias";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@categoria", categoria);
            comando.Parameters.AddWithValue("@estadocategoria", estadocategoria);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();

        }

        public void InsertarMarcas(string marca, int estadomarca)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "InsertarMarcas";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@marca", marca);
            comando.Parameters.AddWithValue("@estadomarca", estadomarca);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();

        }

        public void Login(string usuario, string contrasena)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "Login";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@usuario", usuario);
            comando.Parameters.AddWithValue("@contrasena", contrasena);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();

        }


        public void InsertarTallas(string talla, int estadotalla)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "InsertarTallas";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@talla", talla);
            comando.Parameters.AddWithValue("@estadotalla", estadotalla);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();

        }
    }
}
