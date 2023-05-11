<%--
  Created by IntelliJ IDEA.
  User: ClaudioCristianLopez
  Date: 5/9/2023
  Time: 1:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %> <!-- JSP taglibs -->
<html>
<head>
    <title>Title</title>

    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"  />


</head>
<body>

    <form:form action="insertRunner" modelAttribute="runnerAttribute" method="POST">

        <table>

            <tr>

                <td>Nombre</td>
                <td><form:input path="nombre"/></td>
            </tr>

            </tr>

                <td>Apellido</td>
                <td><form:input path="apellido"/></td>

            </tr>

            </tr>

                <td>Email</td>
                <td><form:input path="email"/></td>

            </tr>
            </tr>

                <td>DNI</td>
                <td><form:input path="dni"/></td>

            </tr>
            </tr>

                <td>Tiempo</td>
                <td><form:input path="tiempo"/></td>

            </tr>


                <!-- boton para submitir -->

                <tr>

                    <td colspan="2"><input type="submit" value="Insert"></td>

                </tr>



        </table>

    </form:form>


</body>
</html>
