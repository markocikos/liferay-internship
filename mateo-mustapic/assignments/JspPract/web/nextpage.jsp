<%--
  Created by IntelliJ IDEA.
  User: Mateo
  Date: 3/13/2017
  Time: 12:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Results Page</title>
        <link rel="stylesheet" href="css/style3.css" />
    </head>
    <%
        String firstName = request.getParameter("first");
        String lastName = request.getParameter("last");
        String email = request.getParameter("email");
        String gender = request.getParameter("gender");
        String country = request.getParameter("country");
        String dateOfBirth = request.getParameter("bday");
        String vehicle = request.getParameter("vehicle");
        %>
    <body>
    <h1>RESULTS PAGE</h1>
    <h2>User Information</h2>

    <table border="1" align="center">
        <tbody>
            <tr>
                <td><b>FIRST NAME</b></td>
                <td><%=firstName%></td>
            </tr>
            <tr>
                <td><b>LAST NAME</b></td>
                <td><%=lastName%></td>
            </tr>
            <tr>
                <td><b>Email</b></td>
                <td><%=email%></td>
            </tr>
            <tr>
                <td><b>GENDER</b></td>
                <td><%=gender%></td>
            </tr>
            <tr>
                <td><b>COUNTRY</b></td>
                <td><%=country%></td>
            </tr>
            <tr>
                <td><b>DATE OF BIRTH:</b></td>
                <td><%=dateOfBirth%></td>
            </tr>
            <tr>
                <td><b>OWNED VEHICLES:</b></td>
                <td><%=vehicle%></td>
            </tr>
        </tbody>
    </table>
        <a href="index.jsp" class="button">BACK TO HOMEPAGE</a>
        <a href="/servlets/firstServlet" class="button">TEST SERVLET</a>
    </body>
</html>
