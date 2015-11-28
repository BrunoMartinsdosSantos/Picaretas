<%@page import="java.util.List"%>
<%@page import="br.grupointegrado.ads.picaretas.modelo.Categoria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String mensagemErro = (String) request.getAttribute("mensagem_erro");
    List<Categoria> categorias = (List<Categoria>) request.getAttribute("categorias");
%>
<html>
    <head>
        <%@include file="/WEB-INF/includes/head.jsp" %>
        <title>Produto</title>
    </head>
    <body>
        <h1>Produto</h1>
        <% if (mensagemErro != null) {%>
        <p class="erro"><%= mensagemErro%></p>
        <% }%>
        <form name="formCadProd" method="POST" action="Produto" onsubmit="return validaCadProd()">
            <input type="hidden" name="id" value="" />
            <label>Categoria</label><br />
            <select name="categoria" id="categoria1">
                <option value="0">(Selecione)</option>
                <%
                    if (categorias != null) {
                        for (Categoria c : categorias) {
                %>
                <option value="<%= c.getId()%>" ><%= c.getDescricao()%></option>
                <%
                        }
                    }
                %>
            </select>
            <br /><br />
            <label>Descrição</label><br />
            <input type="text" id="descricao1" name="descricao" value="" />
            <br />
            <br />
            <label>Detalhes</label>
            <br />
            <textarea id="detalhes1" name="detalhes" rows="10" cols="50" ></textarea>
            <br /><br />
            <label>Valor</label><br />
            <input type="text" id="valor1" name="valor" value="" />
            <br /><br />
            <input type="submit" value="Publicar" onclick="validaCadProd()"/>
        </form>
    </body>
</html>
