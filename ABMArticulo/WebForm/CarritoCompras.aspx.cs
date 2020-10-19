using Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Antlr.Runtime.Misc;
using System.Data;

namespace WebForm
{
    public partial class CarritoCompras : System.Web.UI.Page
    {
        private int idArticulo;
        private List<Articulo> listaArticulos = null;
        private Articulo articuloCarrito = null;
        public List<Articulo> listaCarritoCompras = null;


        protected void Page_Load(object sender, EventArgs e)

        {
            try
            {
                if (listaCarritoCompras == null)
                {
                    listaCarritoCompras = new List<Articulo>();
                }

                if (Session["listaCarritoCompras"] == null) 
                {
                    Session.Add("listaCarritoCompras", listaCarritoCompras);
                }
                if (Request.QueryString["idArticulo"] != null)
                {
                    AgregarArticulo();
                }

                listaCarritoCompras = (List<Articulo>)Session["listaCarritoCompras"];

                decimal total_precio = 0;
                int cant = 0;

                foreach (var item in listaCarritoCompras)
                {
                    total_precio += item.Precio;
                    cant++;
                }

                lblcant.Text = cant.ToString();
                lblTotal.Text = total_precio.ToString();

                
            }
            catch (Exception ex)
            {
                Response.Redirect("Error.aspx");

            }
                     
        }

        public void AgregarArticulo()
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            idArticulo = Convert.ToInt32(Request.QueryString["idArticulo"]);
            listaCarritoCompras = (List<Articulo>)Session["listaCarritoCompras"];
            listaArticulos = negocio.listar();
            articuloCarrito = Buscar(listaArticulos, idArticulo);
            listaCarritoCompras.Add(articuloCarrito);
            Session["listaCarritoCompras"] = listaCarritoCompras;
        }
        private Articulo Buscar(List<Articulo> lista, Int32 id)
        {
            foreach (Articulo item in lista)
            {
                if (item.id == id)
                {
                    articuloCarrito = item;
                    return articuloCarrito;
                }
            }
            return articuloCarrito;
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {

        }
        protected void btnComprar_Click(object sender, EventArgs e)
        {
            listaCarritoCompras.Clear();
            Response.Redirect("Home.aspx");
        }
    }
       
          
   }
   

