<%-- 
    Document   : resultadoconsultarbyid
    Created on : 26 de ago. de 2024, 11:03:00
    Author     : ptoledo
--%>

<%@page import="com.da.crudmaven.model.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta por id</title>
    </head>
    <body>
    <center>
        <h1>Resultado Consultar ID</h1>
        <link rel="stylesheet" href="estilos/css.css">

        <%
            Produto prod = (Produto) request.getAttribute("produto");
        %>

        <%
            if (prod.getDescricao() == null) {
                System.out.println("ERRO TRAVE, BOLETE");               
            out.println("<script> alert('erro')</script>");
            response.sendRedirect("/CRUDMaven/ManterProduto?op=CONSULTARTODOS");                       
            }
        %>
        
        <table border="1" class="style-class">
            <th class="cor">ID</th>
            <th class="cor">Descrição</th>
            <th class="cor">Preço</th>
            <th class="cor">Categoria</th>
            <th class="cor">Quantidade estoque</th>
            <th class="cor">Fornecedor</th>
            <th class="cor">Tipo</th>
            <th class="cor">Quantidade entrada</th>
            <th class="cor">Marca</th>
            <th class="cor">Cor</th>
            <th class="cor">Editar</th>
            <th class="cor">Remover</th>
            <tr>
                <td class="cor"><%out.print(prod.getId());%></td>
                <td class="cor"><%out.print(prod.getDescricao());%></td>
                <td class="cor"><%out.print(prod.getPreco());%></td>
                <td class="cor"><%out.print(prod.getCategoria());%></td>
                <td class="cor"><%out.print(prod.getQtd_estoque());%></td>
                <td class="cor"><%out.print(prod.getFornecedor());%></td>
                <td class="cor"><%out.print(prod.getTipo());%></td>
                <td class="cor"><%out.print(prod.getQtd_entrada());%></td>
                <td class="cor"><%out.print(prod.getMarca());%></td>
                <td class="cor"><%out.print(prod.getCor());%></td>
                <td class="center-img"><a href="ManterProduto?op=EDITAR&txtid=<%out.print(prod.getId());%>"><img src="imagens/edit01.png" width="30" height="30" class="img"></a></td>
                <td class="center-img"><a href="ManterProduto?op=DELETAR&txtid=<%out.print(prod.getId());%>"><img src="imagens/trash01.jpg" width="30" height="30" class="img"></a></td>                    
        </table>    
        <form action="ManterProduto" method ="GET">
            <input type="submit" name="op" value="CONSULTARTODOS" class="botao"><BR><BR>
        </form>
    </center>    
</body>
</html>
