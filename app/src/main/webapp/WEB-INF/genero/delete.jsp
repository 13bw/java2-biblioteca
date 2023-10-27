<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remover Genero</title>
        <link rel="stylesheet" href="/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <h1>Remover Genero</h1>
            <form action="/genero/delete" method="post">
                <input type="hidden" name="id" value="<%= genero.getId() %>">
                <div class="form-group">
                    <label for="nome">Nome</label>
                    <input type="text" class="form-control" id="nome" name="nome" placeholder="Nome" value="<%= genero.getNome() %>">
                </div>
                <a href="/genero/list" class="btn btn-primary">Voltar</a>
                <button type="submit" class="btn btn-Success">Remover</button>
            </form>
        </div>
</html>