using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL
{
    public class CobrosDetalle
    {
        public int CobrosDetalleId { get; set; }
        public int CobroId { get; set; }
        public int PrestamoId { get; set; }
        public int NuSemana { get; set; }
        public float CantidadCuota { get; set; }
        public float Cuoata { get; set; }
        public float SubTotal { get; set; }

        public CobrosDetalle()
        {
            this.CobrosDetalleId = 0;
            this.PrestamoId = 0;
            this.NuSemana = 0;
            this.CantidadCuota = 0;
            this.Cuoata = 0;
            this.SubTotal = 0;
        }

        public CobrosDetalle(int prestamoId,int nuSemana,float cantidadCuota,float cuota,float subTotal)
        {
            this.PrestamoId = prestamoId;
            this.NuSemana = nuSemana;
            this.CantidadCuota = cantidadCuota;
            this.Cuoata = cuota;
            this.SubTotal = subTotal;
        }
    }

}
