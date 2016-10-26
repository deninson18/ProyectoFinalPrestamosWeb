using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class Rutas : ClaseMaestra
    {
        public int RutaId { get; set; }
        public string NombreRuta { set; get; }
        public int CobradorId { set; get; }
        public List<Cobradores> ListaCobradores { get; set; }

        public Rutas()
        {
            this.RutaId = 0;
            this.CobradorId = 0;
            this.NombreRuta = "";
            this.ListaCobradores = new List<Cobradores>();
        }
        public Rutas(int rutaId, string nombreRuta)
        {
            this.RutaId = rutaId;
            this.NombreRuta = nombreRuta;
        }

        public void AgregarCobrador(int CobradorId, string Nombres, string Apellidos)
        {
            this.ListaCobradores.Add(new Cobradores(CobradorId, Nombres, Apellidos));
        }
        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno = false;
            try
            {
                retorno = conexion.Ejecutar(String.Format("insert into Rutas(NombreRuta,CobradorId) values('{0}',{1})", this.NombreRuta,this.CobradorId));
            }catch(Exception ex)
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
                retorno = conexion.Ejecutar(String.Format("update Rutas set NombreRuta='{0}' CobradorId={1} where RutaId={2} ", this.NombreRuta, this.CobradorId,this.RutaId));
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
                retorno = conexion.Ejecutar(String.Format("delete from Rutas where RutaId={0} ",this.RutaId));
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
                dt = conexion.ObtenerDatos(string.Format("select * from Rutas where RutaId={0}", Buscado));
                if (dt.Rows.Count > 0)
                {
                    this.RutaId = (int)dt.Rows[0]["RutaId"];
                    this.NombreRuta = dt.Rows[0]["NombreRuta"].ToString();
                    this.CobradorId = (int)dt.Rows[0]["CobradorId"];
                 
                }
                return dt.Rows.Count > 0;

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            ConexionDb conexion = new ConexionDb();
            string OrdenFinal = "";
            if (!Orden.Equals(""))
            {
                OrdenFinal = "Ordenar Por " + Orden;
            }
            return conexion.ObtenerDatos(("Select " + Campos + " from Rutas where " + Condicion + Orden));
        }

       
    }
}
