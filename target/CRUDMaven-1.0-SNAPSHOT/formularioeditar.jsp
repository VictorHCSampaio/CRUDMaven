<%-- 
    Document   : formularioeditar
    Created on : 2 de set. de 2024, 10:04:27
    Author     : ptoledo
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
        <h1>Resultado Consultar ID</h1>
        <link rel="stylesheet" href="estilos/css.css">
        
        <%
            Produto prod = (Produto) request.getAttribute("produto");
        %>
        <h2>
        <form action = "ManterProduto" method="GET">
            ID........: <%out.print(prod.getId());%> <input type="hidden" name="txtid" value="<%out.print(prod.getId());%>" class="txt">  <BR>
                
                <label for="txtdescricao">Descrição:</label>
                <input placeholder= "Digite a descricão" class="txt" type="text" name="txtdescricao" value="<%out.print(prod.getDescricao());%>">  <BR>
                
                <label for="txtpreco">Preço:</label>
                <input placeholder= "Digite o preço" class="txt" type="number" name="txtpreco" value= "<%out.print(prod.getPreco());%>"> <BR>
                
                <label for="txtcategoria">Categoria:</label>
                <input placeholder= "Digite a categoria" class="txt" type="text" name="txtcategoria" value= "<%out.print(prod.getCategoria());%>"> <BR>
                
                <label for="txtqtd_estoque">Quantidade de Estoque:</label>
                <input placeholder= "Digite a Quantidade de estoque" class="txt" type="number" name="txtqtd_estoque" value= "<%out.print(prod.getQtd_estoque());%>"> <BR>
                
                <label for="txtfornecedor">Fornecedor:</label>
                <input placeholder= "Digite o Fornecedor" class="txt" type="text" name="txtfornecedor" value= "<%out.print(prod.getFornecedor());%>"> <BR>
                
                <label for="txttipo">Tipo:</label>
                <input placeholder= "Digite o Tipo" class="txt" type="text" name="txttipo" value= "<%out.print(prod.getTipo());%>"> <BR>
                
                <label for="txtqtd_entrada">Quantidade de entrada:</label>
                <input placeholder= "Digite a quantidade" class="txt" type="number" name="txtqtd_entrada" value= "<%out.print(prod.getQtd_entrada());%>"> <BR>
                
                <label for="txtmarca">Marca:</label>
                <input placeholder= "Digite a marca" class="txt" type="txt" name="txtmarca" value= "<%out.print(prod.getMarca());%>"> <BR>
                
                <label for="txtcor">Cor:</label>
                <input placeholder= "Digite a cor" class="txt" type="txt" name="txtcor" value= "<%out.print(prod.getCor());%>"> <BR>            
            <input type="submit" name="op" value="ATUALIZAR" class="botao">
            
        </form> 
        </h2>    
    </center>            
    </body>
</html>
