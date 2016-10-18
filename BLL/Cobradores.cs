using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class Cobradores : ClaseMaestra
    {
      
        public int CobradorId { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public string Direccion { get; set; }
        public string Telefono { get; set; }
        public string Celular { get; set; }
        public string Cedula { get; set; }


        public Cobradores()
        {
            this.CobradorId = 0;
            this.Nombres = "";
            this.Apellidos = "";
            this.Direccion = "";
            this.Telefono = "";
            this.Celular = "";
            this.Cedula = "";
        }

        public Cobradores(int cobradorId, string Nombres, string Apellidos)
        {
            this.CobradorId = cobradorId;
            this.Nombres = Nombres;
            this.Apellidos = Apellidos;
        }

        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno = false;
            try
            {
                retorno = conexion.Ejecutar(String.Format("Insert Into Cobradores(Nombres,Apellidos, Direccion,Telefono,Celular,Cedula) values('{0}','{1}','{2}','{3}','{4}','{5}')", 
                    this.Nombres, this.Apellidos, this.Direccion, this.Telefono, this.Celular, this.Cedula));
               
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return retorno;
        }

        public override bool Modificar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno = false;
            try
            {
                
                retorno = conexion.Ejecutar(String.Format("update Cobradores set Nombres='{0}',Apellidos='{1}', Direccion='{2}',Telefono='{3}',Celular='{4}',Cedula='{5}' where CobradorId={6} ",
                    this.Nombres, this.Apellidos, this.Direccion, this.Telefono, this.Celular, this.Cedula, this.CobradorId));
               
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
                retorno = conexion.Ejecutar(String.Format("Delete from Cobradores where CobradorId={0}", this.CobradorId));
              
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
            DataTable dtRuta = new DataTable();
            try
            {
                dt = conexion.ObtenerDatos(String.Format("Select CobradorId,Nombres,Apellidos, Direccion,Telefono,Celular,Cedula from Cobradores where CobradorId={0} ",Buscado));
                if (dt.Rows.Count > 0)
                {
                    this.CobradorId = (int)dt.Rows[0]["CobradorId"];
                    this.Nombres = dt.Rows[0]["Nombres"].ToString();
                    this.Apellidos = dt.Rows[0]["Apellidos"].ToString();
                    this.Direccion = dt.Rows[0]["Direccion"].ToString();
                    this.Telefono = dt.Rows[0]["Telefono"].ToString();
                    this.Celular = dt.Rows[0]["Celular"].ToString();
                    this.Cedula = dt.Rows[0]["Cedula"].ToString();
                }
                
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return dt.Rows.Count > 0;
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            ConexionDb conexion = new ConexionDb();
            string OrdenFinal = "";
            if (!Orden.Equals(""))
            {
                OrdenFinal = "Ordenar Por " + Orden;
            }
            return conexion.ObtenerDatos("select" + Campos + "from Cobradores where" + Condicion + " " + Orden);
        }

       
    }
}
