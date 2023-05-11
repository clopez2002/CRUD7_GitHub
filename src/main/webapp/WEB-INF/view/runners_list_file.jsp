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
    <title>Title</title

        <!-- le digo donde estan los resources, en este caso de estilos css -->

        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"  />

</head>
<body>

    <table border="1">

            <tr>

                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Email</th>
                    <th>DNI</th>
                    <th>Tiempo</th>

                <!-- Boton para modificar -->
                    <th>Update</th>




            </tr>

            <c:forEach var="runnersTEMP" items="${runnersAttributes}"> <!-- recorre cuantos runners hay -->

                <c:url var="updateRunnerLink" value="/runnersPage/updateRunnerURL">

                    <!-- ahora le pasamos un parametro para indicarle que runner cliqeuamos -->
                    <c:param name="runnerId" value="${runnersTEMP.id}"/>

                </c:url>

                <tr>
                        <td>${runnersTEMP.nombre}</td>
                        <td>${runnersTEMP.apellido}</td>
                        <td>${runnersTEMP.email}</td>
                        <td>${runnersTEMP.dni}</td>
                        <td>${runnersTEMP.tiempo}</td>

                        <!-- aca ponemos boton para eliminar C/U de los registros -->
                        <td><a href="${updateRunnerLink}"><input type="button" value="Update"/></a> </td>

                </tr>



            </c:forEach>


    </table>

    <br/>

        <!-- Boton que nos lleva a Insertar runner -->

        <input type="button" value="Insert Runner" onclick="window.location.href='insertRunnerURL'; return false"/>



</body>
</html>
