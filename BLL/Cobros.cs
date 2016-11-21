using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class Cobros : ClaseMaestra
    {

        public int CobroId { get; set; }
        public float Abono { get; set; }
        public float Total { get; set; }
        public List<CobrosDetalle> ListaCobro { get; set; }

        public Cobros()
        {
            this.CobroId = 0;
            this.Abono = 0;
            this.Total = 0;
            this.ListaCobro = new List<CobrosDetalle>();
        }

        public void AgregarCobros(int prestamoId, int nuSemana, float cantidadCuota, float cuota, float subTotal)
        {
            ListaCobro.Add(new CobrosDetalle(prestamoId,nuSemana,cantidadCuota,cuota,subTotal));
        }


        public override bool Insertar()
        {
            int retorno = 0;
            ConexionDb conexion = new ConexionDb();
            try
            {
                retorno=Convert.ToInt32(conexion.ObtenerValor(string.Format("insert into Cobros(Abono,Total) values({0},{1}); select SCOPE_IDENTITY()",this.Abono,this.Total)));

                foreach (CobrosDetalle item in ListaCobro)
                {
                    conexion.Ejecutar(string.Format("insert into CobrosDetalle(PrestamoId,NuSemana,CantidadCuota,Cuota,SubTotal) values({0},{1},{2},{3},{4})",
                        retorno, item.PrestamoId, item.NuSemana, item.CantidadCuota, item.Cuoata, item.SubTotal));
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return retorno > 0;
        }

        public override bool Eliminar()
        {

            ConexionDb conexion = new ConexionDb();
            bool retorno = false;
            try
            {
                retorno = conexion.Ejecutar("delete from CobrosDetalle where CobroId={0};delete from Cobros where CobroId={0}");
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return retorno;
        }
        public override bool Buscar(int Buscado)
        {
            throw new NotImplementedException();
        }

       

      
        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            throw new NotImplementedException();
        }

        public override bool Modificar()
        {
            throw new NotImplementedException();
        }
    }
}
