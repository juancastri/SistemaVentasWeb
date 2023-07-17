using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;

namespace CapaDatos
{
    public class Conexion
    {
        //Almacenamos el valor que estamos obteniendo de nuestra cadena de conexión(/CapaPresentacionAdmin/Web.config linea 8) en una variable tipo string "cn"
        public static string cn = ConfigurationManager.ConnectionStrings["cadena"].ToString();
    }
}
