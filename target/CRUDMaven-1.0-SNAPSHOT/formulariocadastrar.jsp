<%-- 
    Document   : formulariocadastrar
    Created on : 17 de set. de 2024, 09:24:37
    Author     : victor
--%>

<%@page import="com.da.crudmaven.model.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1>Cadastrar</h1>
        <link rel="stylesheet" href="estilos/css.css">
        <%
            Produto prod = (Produto) request.getAttribute("produto");
        %>
    <h2>    
            <form action = "ManterProduto" method="POST" accept-charset="UTF-8">                
                <label for="txtdescricao">Descrição:</label>
                <input placeholder= "Digite a descricão" class="txt" type="text" name="txtdescricao" value=>  <BR>
                
                <label for="txtpreco">Preço:</label>
                <input placeholder= "Digite o preço" class="txt" type="number" name="txtpreco" value=> <BR>
                
                <label for="txtcategoria">Categoria:</label>
                <input placeholder= "Digite a categoria" class="txt" type="text" name="txtcategoria" value=> <BR>
                
                <label for="txtqtd_estoque">Quantidade de Estoque:</label>
                <input placeholder= "Digite a Quantidade de estoque" class="txt" type="number" name="txtqtd_estoque" value=> <BR>
                
                <label for="txtfornecedor">Fornecedor:</label>
                <input placeholder= "Digite o Fornecedor" class="txt" type="text" name="txtfornecedor" value=> <BR>
                
                <label for="txttipo">Tipo:</label>
                <input placeholder= "Digite o Tipo" class="txt" type="text" name="txttipo" value=> <BR>
                
                <label for="txtqtd_entrada">Quantidade de entrada:</label>
                <input placeholder= "Digite a quantidade" class="txt" type="number" name="txtqtd_entrada" value=> <BR>
                
                <label for="txtmarca">Marca:</label>
                <input placeholder= "Digite a marca" class="txt" type="txt" name="txtmarca" value=> <BR>
                
                <label for="txtcor">Cor:</label>
                <input placeholder= "Digite a cor" class="txt" type="txt" name="txtcor" value=> <BR>
                                
                    <input type="submit" name="op" value="CADASTRAR" class="botao"> 
                    <input type="submit" name="op" value="CONSULTARTODOS" class="botao">                
            </form>          
    </h2>
    </center>    
    </body>
</html>