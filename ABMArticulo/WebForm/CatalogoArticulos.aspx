<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CatalogoArticulos.aspx.cs" Inherits="WebForm.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

      
    <section>
        <div class="container-fluid"> 
            <div class="row">
                <div class="col-md-12">
                    <h1>CATALOGO 2020</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <p>DISFRUTA DE NUESTRAS OFERTAS!</p>
                </div>
            </div>
            <div class="row">
          <% foreach (Dominio.Articulo item in listaArticulo)
            { %>
                
                    <div class="col-md-4">
                        <div class="card">
                            <div class="pic">
                                <img src="<%= item.UrlImage %>" class="img-fluid" alt="...">
                                 </div>
                            <div class="content">
                                <h3><% = item.Nombre %></h3>
                                <h4><% = "Precio: $" + item.Precio %></h4>
                                <hr />
                                <a href="" class="btn btn-primary">Agregar al carrito</a>
                            </div>
                                
                           
                        </div>
                         </div>                      
             
           <%  } %>
        </div>
        </section>
    
   
    <style>
        body {
            background-color: #ffe57f;
        }

        .card{
            background-color: #ffe57f;
            margin-bottom: 100px;

        }

        .col-md-12{
            text-align: center;
        }

        .content{
            padding: 10px;
        }
             
        p{
        font-size: 30px;
        font-weight: bold;
        font-family: Arial;
        text-align: center;
        padding: 20px;
        }

        .card .btn{
            float: right;
        }

        .img-fluid{
        }

    </style>


</asp:Content>
