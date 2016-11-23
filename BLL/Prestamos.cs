using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class Prestamos : ClaseMaestra
    {
        public int PrestamoId { get; set; }
        public int ClienteId { get; set; }
        public string FechaInicial { get; set; }
        public string FechaVencimiento { get; set; }
        public float Monto { get; set; }
        public int NuSemana { get; set; }
        public float CantidadCuota { get; set; }
        public float Cuota { get; set; }
        public float Interes { get; set; }
        public float PagoTotal { get; set; }

        public List<Clientes> ListaClientes { get; set; }
        public List<Rutas> ListaRutas { get; set; }


        public Prestamos()
        {
            this.PrestamoId = 0;
            this.ClienteId = 0;
            this.FechaInicial = "";
            this.FechaVencimiento = "";
            this.Monto = 0;
            this.NuSemana = 0;
            this.CantidadCuota= 0;
            this.Cuota = 0;
            this.Interes = 0;
            this.PagoTotal = 0;

        }
        public Prestamos(int prestamoId, int clienteId, string fechaInicial, string fechaVencimiento, float Monto, int Nusemana, int CantidadCuota, float cuota, float interes,float PagoTotal)
        {
            this.PrestamoId = prestamoId;
            this.ClienteId = clienteId;
            this.FechaInicial = fechaInicial;
            this.FechaVencimiento = fechaVencimiento;
            this.Monto =Monto ;
            this.NuSemana = Nusemana;
            this.CantidadCuota = CantidadCuota;
            this.Cuota = cuota;
            this.PagoTotal = PagoTotal;             
        }

        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
             bool retorno = false;

            try
            { 
            retorno = conexion.Ejecutar(String.Format("Insert Into Prestamos(ClienteId,FechaInicial,FechaVencimiento,Monto,NuSemana,CantidadCuota,Cuota,Interes,PagoTotal) values({0},'{1}','{2}',{3},{4},{5},{6},{7},{8})",
                this.ClienteId,this.FechaInicial, FechaVencimiento, Monto, this.NuSemana, this.CantidadCuota, this.Cuota, this.Interes,this.PagoTotal));
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
            retorno = conexion.Ejecutar(string.Format("Update Prestamos set ClienteId={0}, FechaInicial='{1}', FechaVencimiento='{2}',Monto={3},NuSemana={4},CantidadCuota={5},Cuota={6},Interes={7},PagoTotal={8} where PrestamoId={9}",
             this.ClienteId,this.FechaInicial, FechaVencimiento, Monto, this.NuSemana, this.CantidadCuota, this.Cuota, this.Interes,this.PagoTotal, this.PrestamoId));
            
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
                    this.FechaInicial = dt.Rows[0]["FechaInicial"].ToString();
                    this.FechaVencimiento = dt.Rows[0]["FechaVencimiento"].ToString();
                    this.Monto = (float)Convert.ToDecimal( dt.Rows[0]["Monto"].ToString());
                    this.CantidadCuota = (float)Convert.ToDecimal(dt.Rows[0]["CantidadCuota"].ToString());
                    this.Cuota = (float)Convert.ToDecimal( dt.Rows[0]["Cuota"].ToString());
                    this.PagoTotal = (float)Convert.ToDecimal(dt.Rows[0]["PagoTotal"].ToString());
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
            return conexion.ObtenerDatos(("Select PrestamoId,CL.ClienteId,CL.Nombres,R.NombreRuta,FechaInicial,FechaVencimiento,Monto,NuSemana,CantidadCuota,Interes,PagoTotal from Prestamos as P inner join Clientes as CL on CL.ClienteId=P.ClienteId inner join Rutas R on R.RutaId=CL.RutaId where " + Condicion + Orden));
   
    }

        public DataTable ListadoDt(string Condicion)
        {
            ConexionDb conexion = new ConexionDb();

            return conexion.ObtenerDatos(string.Format("select *" + " from Prestamos where " + Condicion));

        }


    }
}
