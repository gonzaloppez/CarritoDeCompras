<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detalles.aspx.cs" Inherits="WebForm.Detalles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="jumbotron-fluid">
            <h1 class="display-4"><% = articuloDetalle.Nombre %></h1>
            <p class="lead">Precio Unitario: <% = articuloDetalle.Precio %></p>
            <img src="<%= articuloDetalle.UrlImage %>" class="img" alt="..."
            <hr class="my-4">
            <p id="detalle"><% = articuloDetalle.Descripcion %></p>
            <p class="lead">
                <%-- <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>--%>
            </p>
        </div>
    </div>




    <style>
        body {
            background-color: #ffe57f;
        }

        img{

            width: 500px;
        }
        .container{
           text-align: center;


        }

        #detalle{
        font-size: 30px;
        font-weight: bold;
        font-family: Arial;
        text-align: center;
        padding: 20px;
        }

    </style>
</asp:Content>
