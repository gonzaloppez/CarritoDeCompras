using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Dominio;



namespace WebForm
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public List<Articulo> listaArticulos { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            try
            {
                listaArticulos = negocio.listar();
                
            }
            catch (Exception ex)
            {
                Response.Redirect("Error.aspx");
            }

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
          
        }
    }
}