using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace CapaDatos
{
    class CD_Conexion
    {
        private SqlConnection DBConexion = new SqlConnection("Server=(local);DataBase=TechIn;Integrated Security=true");

        public SqlConnection AbrirConexion()
        {
            if (DBConexion.State == ConnectionState.Closed)
                DBConexion.Open();
            return DBConexion;
        }
        public SqlConnection CerrarConexion()
        {
            if (DBConexion.State == ConnectionState.Open)
                DBConexion.Close();
            return DBConexion;
        }

    }
}
