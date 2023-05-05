<%--
  Created by IntelliJ IDEA.
  User: ClaudioCristianLopez
  Date: 5/4/2023
  Time: 1:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <!-- JSP taglibs -->
<html>
<head>
    <title>Title</title>
</head>
<body>

    <table>

            <tr>

                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Email</th>
                    <th>DNI</th>
                    <th>Tiempo</th>


            </tr>

            <c:forEach var="runnersTEMP" items="${runnersAttributes}"> <!-- recorre cuantos clientes hay -->

                <tr>
                        <td>${runnersTEMP.nombre}</td>
                        <td>${runnersTEMP.apellido}</td>
                        <td>${runnersTEMP.email}</td>
                        <td>${runnersTEMP.dni}</td>
                        <td>${runnersTEMP.tiempo}</td>

                </tr>



            </c:forEach>

    </table>



</body>
</html>
