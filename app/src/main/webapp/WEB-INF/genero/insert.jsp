<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>Novo Gênero</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1>Novo Gênero</h1>
        <form method="post" action="/genero/insert">
            <div class="form-group">
                <label for="nome">Nome</label>
                <input type="text" class="form-control" id="nome" name="nome">
            </div>
            <a href="/genero/list" class="btn btn-primary">Voltar</a>
            <button type="submit" class="btn btn-primary">Salvar</button>
        </form>
    </div>
</body>