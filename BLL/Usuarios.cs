using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class Usuarios : ClaseMaestra
    {
        public int UsuarioId { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public string NombreUsuario { get; set; }
        public string Contrasena { get; set; }
        public string ConfirmarContrasena { get; set; }
        public string TipoUsuario { get; set; }
        public string Foto { get; set; }

        public Usuarios()
        {
            this.UsuarioId = 0;
            this.Nombres = "";
            this.Apellidos = "";
            this.NombreUsuario = "";
            this.Contrasena = "";
            this.ConfirmarContrasena = "";
            this.TipoUsuario = "";
            this.Foto = "";

        }
        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno = false;

            try
            {
                retorno = conexion.Ejecutar(String.Format("insert into Usuarios(Nombres,Apellidos,NombreUsuario,Contrasena,ConfirmarContrasena,TipoUsuario,Foto) values('{0}','{1}','{2}','{3}','{4}','{5}','{6}')",
                    this.Nombres, this.Apellidos, this.NombreUsuario, this.Contrasena,this.ConfirmarContrasena, this.TipoUsuario, this.Foto));

            }
            catch (Exception ex)
            {
                throw ex;
            }
            return retorno;
        }

        public override bool Eliminar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno = false;

            try
            {
                retorno = conexion.Ejecutar(String.Format("delete from Usuarios where UsuarioId={0}", this.UsuarioId));

            }
            catch (Exception ex)
            {
                throw ex;
            }
            return retorno;

        }

        public override bool Buscar(int Buscado)
        {
            ConexionDb conexion = new ConexionDb();
            DataTable dt = new DataTable();
            try
            {
                dt = conexion.ObtenerDatos(string.Format("select * from Usuarios where UsuarioId={0}", Buscado));
                if (dt.Rows.Count > 0)
                {
                    this.UsuarioId = (int)dt.Rows[0]["UsuarioId"];
                    this.Nombres = dt.Rows[0]["Nombres"].ToString();
                    this.Apellidos = dt.Rows[0]["Apellidos"].ToString();
                    this.NombreUsuario = dt.Rows[0]["NombreUsuario"].ToString();
                    this.Contrasena = dt.Rows[0]["Contrasena"].ToString();
                    this.ConfirmarContrasena = dt.Rows[0]["ConfirmarContrasena"].ToString();
                    this.TipoUsuario = dt.Rows[0]["TipoUsuario"].ToString();
                    this.Foto= dt.Rows[0]["Foto"].ToString();
                }
                return dt.Rows.Count > 0;

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public override bool Modificar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno = false;
            try
            {
                retorno = conexion.Ejecutar(string.Format("update Usuarios set Nombres='{0}',Apellidos='{1}',NombreUsuario='{2}',Contrasena='{3}',ConfirmarContrasena='{4}',TipoUsuario='{5}',Foto='{6}' where UsuarioId={7}",
                    this.Nombres, this.Apellidos, this.NombreUsuario, this.Contrasena,this.ConfirmarContrasena, this.TipoUsuario,this.Foto, this.UsuarioId));

            }
            catch (Exception ex)
            {
                throw ex;
            }
            return retorno;
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            ConexionDb conexion = new ConexionDb();
            string ordenar = "";
            if (!Orden.Equals(""))
                ordenar = " orden by  " + Orden;
            return conexion.ObtenerDatos(("select " + Campos + " from Usuarios where " + Condicion + Orden));
        }

        public DataTable ListadoDt(string Condicion)
        {
            ConexionDb conexion = new ConexionDb();

            return conexion.ObtenerDatos(string.Format("select *" + " from Usuarios where " + Condicion));

        }

    }
}
