<%-- 
    Document   : frmExcluirCliente
    Created on : Feb 3, 2023, 12:03:19 AM
    Author     : Frederico
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar bg-light">
            <div class="container">
                <a href="" ><span class="navbar-brand mb-0 h1">Cliente</span></a>
            </div>
        </nav>
        <div class="container">
            <div>
                <h1>Excluir Cliente</h1>
            </div>
            <div class="col-md-3">
                <form action="" method="POST">
                    <label class="form-label">Código do Cliente</label><br/>
                    <input class="form-control col-md-3" type="text" name="id" value="<%=request.getParameter("id")%>" />
                    <br/>
                    
                    <label class="form-label">Nome</label><br/>
                    <input type="text" class="form-control col-md-3" name="nome" value="<%=request.getParameter("id")%>" />
                    <br/>
                    
                    <label class="form-label">E-mail</label><br/>
                    <input type="text" class="form-control col-md-3" name="email" value="<%=request.getParameter("id")%>" />
                    <br/>
                    
                    <button class="btn btn-danger" type="submit">Excluir</button>
                </form>
            </div>
                    
        </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>