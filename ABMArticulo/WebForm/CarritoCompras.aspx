<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CarritoCompras.aspx.cs" Inherits="WebForm.CarritoCompras" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
   
   
    <div><div class="container"> 
            <div class="row">
                <div class="col-md-12">
                    <h1 id="head">CARRITO DE COMPRAS</h1>
                    
                    <br />
                    <br />
                </div>
            </div>
        </div>

        <div>
        
    <% foreach (Dominio.Articulo item in listaCarritoCompras)
            { %>
                    <div class="col-md-12">
                        
                        <div class="card">
                            <div class="pic">
                                <a href="Detalles.aspx?idArticulo=<% = item.id.ToString() %>">
                                    <img src="<%= item.UrlImage %>" class="img" id="im" alt="...">
                                    </a>  
                                 </div>
                            <div class="content">
                                <h2>Cantidad: 1</h2>
                                <h3><% = item.Nombre %></h3>
                                <h4><% = "Precio: $" + item.Precio %></h4>
                                                              <asp:Button Text="Elminar del carrito" ID="btnEliminar" OnClick="btnEliminar_Click" runat="server" /> 

                                
                            <hr />
                                
                            </div>                       
                            </div>
                         </div> <br />
            
            
           <%  } %>
            <div class="container-fluid">
            <div class="col-md-6">
                               <h1 id="cant">Cantidad de articulos seleccionados:  <asp:Label Text="" ID="lblcant" runat="server" /></h1>

            </div>
            <div class="col-md-6">
                <div class="row">
               <h1 id="total">Total: $<asp:Label Text="" ID="lblTotal" runat="server" /></h1>
            </div>
            </div>
            </div>
                </div>
        </div><br />

        
        <div class="col-md-12">
               <a href="CatalogoArticulos.aspx" class="btn btn-primary" id="btnP">Volver al Catalogo</a>
                           <a href="home.aspx" class="btn btn-primary" id="btnP">Finalizar compra</a>

           </div>
    <br />
    <br />
    <br />
        


    <style>

        body {
            background-color: #ffe57f;
        }

        .card{
            background-color: #ffe57f;
            margin-bottom: 100px;
            height: 350px;
            border: solid 0px;
        }
        #im{
            height: 250px;
            
        }

        .col-md-12{
            text-align: center;
        }

        .content{
            padding: 10px;
        }
             
        #agre{
        font-size: 30px;
        font-weight: bold;
        font-family: Arial;
        text-align: center;
        padding: 20px;
        }

        .card .btn{
            float: right;
           
        }

         #btnP{
            border-radius: 10px;
        }

        #btnP:hover{
            background: white;
            border: solid 1px #ffe57f;
            font-size: 15px;
            color: black;
            border: solid 0.5px black;
        }

        .row{
            margin-top: 0px;
           padding-left: 160px;
            color: black;
            
        }
             
        hr {
            border: 0 none black;
            border-top: 1px solid black;
            
            display: block;
            clear: both;
            }

        #head{
            text-align: center;
            padding-right: 220px;
        }

        #cant{
            font-size: 25px;
        }
        
    </style>

</asp:Content>

