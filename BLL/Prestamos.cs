using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    class Prestamos : ClaseMaestra
    {
        public int PrestamoId { get; set; }
        public int ClienteId { get; set; }
        public int RutaId { get; set; }
        public string FechaInicial { get; set; }
        public string FechaVencimiento { get; set; }
        public float Monto { get; set; }
        public int NuSemana { get; set; }
        public int Semana { get; set; }
        public int ValorCuota { get; set; }
        public float Interes { get; set; }
        public float PagoTotal { get; set; }

        public List<Clientes> ListaClientes { get; set; }
        public List<Rutas> ListaRutas { get; set; }


        public Prestamos()
        {
            this.PrestamoId = 0;
            this.ClienteId = 0;
            this.RutaId = 0;
            this.FechaInicial = "";
            this.FechaVencimiento = "";
            this.Monto = 0;
            this.NuSemana = 0;
            this.Semana= 0;
            this.ValorCuota = 0;
            this.Interes = 0;
            this.PagoTotal = 0;

        }

        public void AgregarClientes(int clienteId, string nombres)
        {
            this.ListaClientes.Add(new Clientes(clienteId, nombres));
        }

        public void AgregarRutas(int rutaId, string nombreRuta)
        {
            this.ListaRutas.Add(new Rutas(rutaId, nombreRuta));
        }

        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
             bool retorno = false;

            try
            { 
            retorno = conexion.Ejecutar(String.Format("Insert Into Prestamos(ClienteId,RutaId,FechaInicial,FechaVencimiento,Monto,NuSemana,Semana,ValorCuota,Interes,PagoTotal) values({0},{1},'{2}','{3}',{4},{5},{6},{7},{8},{9},{10})",
                this.ClienteId, this.RutaId, this.FechaInicial, FechaVencimiento, Monto, this.NuSemana, this.Semana, this.ValorCuota, this.Interes,this.PagoTotal));
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
            retorno = conexion.Ejecutar(string.Format("Update Prestamos set ClienteId={0},RutaId={1}, FechaInicial='{2}', FechaVencimiento='{3}',Monto={4},NuSemana={5},Semana={6},ValorCuota={7},Interes={8},PagoTotal={9} where PrestamoId={10}",
             this.ClienteId, this.RutaId, this.FechaInicial, FechaVencimiento, Monto, this.NuSemana, this.Semana, this.ValorCuota, this.Interes,this.PagoTotal, this.PrestamoId));
            
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
                dt = conexion.ObtenerDatos(String.Format("Select * from Prestamos where PrestamoId= {0} ", Buscado));
                if (dt.Rows.Count > 0)
                {
                    this.PrestamoId = (int)dt.Rows[0]["PrestamoId"];
                    this.ClienteId = (int)dt.Rows[0]["ClienteId"];
                    this.RutaId = (int)dt.Rows[0]["RutaId"];
                    this.FechaInicial = dt.Rows[0]["FechaInicial"].ToString();
                    this.FechaVencimiento = dt.Rows[0]["FechaVencimiento"].ToString();
                    this.Monto = (float)dt.Rows[0]["Monto"];
                    this.Semana = (int)dt.Rows[0]["Semana"];
                    this.ValorCuota = (int)dt.Rows[0]["ValorCuota"];
                    this.PagoTotal = (float)dt.Rows[0]["PagoTotal"];
                }
            }
            catch(Exception ex)
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
                retorno = conexion.Ejecutar(String.Format("Delete from Prestamos where PrestamoId={0}", this.PrestamoId));
            }

            catch(Exception ex)
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
            return conexion.ObtenerDatos("select" + Campos + "from Prestamos where" + Condicion + " " + Orden);
        }

        
    }
}
