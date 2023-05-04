<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>

    <!-- esta linea es para poder llamar y correr el Servlet!!! no borrarla, en todo caso, comentarle -->

    <!-- ahora la vamos a comentar y hacemos redireccion, para no estar escribiendo a cada rato: /runnersPage/runnersListPage

    <a href="Servlet">Ejecutar Servlet!</a>

    -->

    <% response.sendRedirect("runnersPage/runnersListPage"); %>


</body>
</html>
