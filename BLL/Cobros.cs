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
        public string FechaCobro { get; set; }
        public float  Abono { get; set; }
        public float SubTotal { get; set; }
        public float Total { get; set; }
        public List<CobrosDetalle> ListaCobro { get; set; }

        public Cobros()
        {
            this.CobroId = 0;
            this.FechaCobro = "";
            this.Abono = 0;
            this.SubTotal = 0;
            this.Total = 0;
            this.ListaCobro = new List<CobrosDetalle>();
        }

        public void AgregarCobros(int prestamoId, int nuSemana, float cuota)
        {
            ListaCobro.Add(new CobrosDetalle(prestamoId, nuSemana, cuota));
        }


        public override bool Insertar()
        {
            int retorno = 0;
            ConexionDb conexion = new ConexionDb();
            try
            {
                retorno=Convert.ToInt32(conexion.ObtenerValor(string.Format("insert into Cobros(FechaCobro,Abono,SubTotal,Total) values('{0}',{1},{2},{3}); select SCOPE_IDENTITY()",
                    this.FechaCobro,this.Abono,this.SubTotal,this.Total)));
    
                foreach (CobrosDetalle item in ListaCobro)
                {
                    conexion.Ejecutar(string.Format("insert into CobrosDetalle(CobroId,PrestamoId,NuSemana,Cuota) values({0},{1},{2},{3})",
                        retorno, item.PrestamoId, item.NuSemana, item.Cuoata));
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
            ConexionDb conexion = new ConexionDb();
            DataTable dt = new DataTable();

            try
            {
                dt = conexion.ObtenerDatos(string.Format("select * from Cobros where CobroId={0}", Buscado));
                if (dt.Rows.Count > 0)
                {
                    this.CobroId = (int)dt.Rows[0]["CobroId"];
                    this.FechaCobro = dt.Rows[0]["FechaCobro"].ToString();
                    this.Abono = (float)Convert.ToDecimal(dt.Rows[0]["Abono"].ToString());
                    this.SubTotal = (float)Convert.ToDecimal(dt.Rows[0]["SubTotal"].ToString());
                    this.Total = (float)Convert.ToDecimal(dt.Rows[0]["Total"].ToString());

                    DataTable dtDetalle = new DataTable();

                    dtDetalle = conexion.ObtenerDatos(string.Format("select * from CobrosDetalle where CobroId={0}", Buscado));
                    foreach (DataRow row in dtDetalle.Rows)
                    {
                        AgregarCobros((int)row["PrestamoId"], (int)row["NuSemana"], (float)Convert.ToDecimal(row["Cuota"].ToString()));
                    }

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
                retorno = conexion.Ejecutar(string.Format("update Cobros set FechaCobro ='{0}', Abono={1}, SubTotal={2}, Total={3}  where CobroId={4} ",
                    this.FechaCobro,this.Abono, this.SubTotal, this.Total));

                if (retorno)
                {
                    retorno = conexion.Ejecutar(string.Format("delete from CobrosDetalle where CobroId={0}", this.CobroId));

                    foreach (CobrosDetalle item in this.ListaCobro)
                    {
                        conexion.Ejecutar(string.Format("insert into CobrosDetalle(CobroId,PrestamoId,NuSemana,Cuota) values({0},{1},{2},{3})",
                            this.CobroId, item.PrestamoId, item.NuSemana, item.Cuoata));
                    }
                }
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
            string Order = "";
            if (!Orden.Equals(""))
            {
                Order = "order bye";
            }
            return conexion.ObtenerDatos(string.Format("select CobroDetalleId, C.CobroId,PrestamoId,C.FechaCobro,NuSemana,Cuota,C.Abono,C.SubTotal from CobrosDetalle as CD inner join Cobros as C on CD.CobroId=C.CobroId where " + Condicion + Order));
        }

    }
}
