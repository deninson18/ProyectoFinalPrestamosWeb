using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class Clientes : ClaseMaestra
    {
        public int ClienteId { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public string Apodos { get; set; }
        public string Direccion { get; set; }
        public string Referencia { get; set; }
        public int Sexo { get; set; }
        public string Cedula { get; set; }
        public string Telefono { get; set; }
        public string Celular { get; set; }

        public Clientes()
        {
            this.ClienteId = 0;
            this.Nombres = "";
            this.Apellidos = "";
            this.Apodos = "";
            this.Direccion = "";
            this.Referencia = "";
            this.Sexo =0;
            this.Cedula = "";
            this.Telefono = "";
            this.Celular = "";
        }

        public Clientes(int clienteId, string nombres)
        {
            this.ClienteId = clienteId;
            this.Nombres = nombres;
        }

        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno = false;
            try
            {
                retorno = conexion.Ejecutar(string.Format("insert into Clientes(Nombres,Apellidos,Apodos,Direccion,Referencia,Sexo,Cedula,Telefono,Celular) values('{0}','{1}','{2}','{3}','{4}',{5},'{6}','{7}','{8}')",
                  this.Nombres, this.Apellidos, this.Apodos, this.Direccion, this.Referencia, this.Sexo, this.Cedula, this.Telefono, this.Celular));

            }
            catch(Exception ex)
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
                retorno = conexion.Ejecutar(String.Format("update Clientes set Nombres='{0}', Apellidos='{1}', Apodos='{2}', Direccion='{3}', Referencia='{4}', Sexo={5}, Cedula='{6}', Telefono='{7}', Celular='{8}' where ClienteId={9}",
                    this.Nombres,this.Apellidos,this.Apodos,this.Referencia,this.Sexo,this.Cedula,this.Telefono,this.Celular,this.ClienteId));

            }catch(Exception ex)
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
                dt = conexion.ObtenerDatos(String.Format(" Select * from Clientes where ClienteId = {0} ", Buscado));
                if (dt.Rows.Count > 0)
                {
                    this.ClienteId = (int)dt.Rows[0]["ClienteId"];
                    this.Nombres = dt.Rows[0]["Nombres"].ToString();
                    this.Apellidos = dt.Rows[0]["Apellidos"].ToString();
                    this.Apodos = dt.Rows[0]["Apodos"].ToString();
                    this.Direccion = dt.Rows[0]["Direccion"].ToString();
                    this.Referencia = dt.Rows[0]["Referencia"].ToString();
                    this.Sexo = (int)dt.Rows[0]["Sexo"];
                    this.Cedula = dt.Rows[0]["Cedula"].ToString();
                    this.Telefono = dt.Rows[0]["Telefono"].ToString();
                    this.Celular = dt.Rows[0]["Celular"].ToString();

                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return dt.Rows.Count > 0;

        }

        public override bool Eliminar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno = false;
            try
            {
                retorno = conexion.Ejecutar(String.Format("delete from Clientes where ClienteId={0}", this.ClienteId));
                
            }catch(Exception ex)

            {
                throw ex;
            }
            return retorno;
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            ConexionDb conexion = new ConexionDb();
            string OrdenFinal = "";
            if (!Orden.Equals(""))
            {
                OrdenFinal = "Ordenar Por " + Orden;
            }
            return conexion.ObtenerDatos("select" + Campos + "from Clientes where" + Condicion + " " + Orden);
        }

       
    }
}
