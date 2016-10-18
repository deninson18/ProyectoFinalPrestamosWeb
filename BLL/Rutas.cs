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
           
        }

        public override bool Modificar()
        {
            throw new NotImplementedException();
        }

        public override bool Eliminar()
        {
            throw new NotImplementedException();
        }
        public override bool Buscar(int Buscado)
        {
            throw new NotImplementedException();
        }


        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            throw new NotImplementedException();
        }

       
    }
}
