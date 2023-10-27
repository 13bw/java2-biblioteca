<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <title>Generos</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1>Generos</h1>
        <a href="/genero/insert" class="btn btn-primary">Novo</a>
        <table class="table table-striped">
            <tr>
                <th>Id</th>
                <th>Nome</th>
                <th>%nbsp;</th>
            </tr>
            <c:forEach items="${generos}" var="genero">
                <tr>
                    <td>${genero.id}</td>
                    <td>${genero.nome}</td>
                    <td>
                        <a href="/genero/update?id=${genero.id}" class="btn btn-warning">Editar</a>
                        <a href="/genero/delete?id=${genero.id}" class="btn btn-danger">Excluir</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>