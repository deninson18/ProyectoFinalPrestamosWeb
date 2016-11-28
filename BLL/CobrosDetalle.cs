using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL
{
    public class CobrosDetalle
    {
        public int CobroId { get; set; }
        public int PrestamoId { get; set; }
        public int NuSemana { get; set; }
        public float Cuoata { get; set; }      
   
        public CobrosDetalle()
        {
           
            this.PrestamoId = 0;
            this.NuSemana = 0;
            this.Cuoata = 0;        
        }

        public CobrosDetalle(int prestamoId,int nuSemana,float cuota)
        {
            this.PrestamoId = prestamoId;
            this.NuSemana = nuSemana;
            this.Cuoata = cuota;
        }
    }

}
