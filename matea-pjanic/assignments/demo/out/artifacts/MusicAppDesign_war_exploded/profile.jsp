<%--
  Created by IntelliJ IDEA.
  User: Matea Pjanic
  Date: 27/02/2017
  Time: 13:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/ajax.js" type="text/javascript"></script>
    <script src="js/bla.js" type="text/javascript"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<jsp:include page="header.jsp" >
    <jsp:param name="info" value="<a href='#info'>Info</a>" />
    <jsp:param name="artists" value="<a href='index.jsp#artists'>Top artists</a>" />
    <jsp:param name="tracks" value="<a href='index.jsp#tracks'>Top tracks</a>" />
    <jsp:param name="events" value="<a href='index.jsp#events'>Events</a>" />
    <jsp:param name="home" value="<a href='index.jsp'>Home</a>" />
</jsp:include>
<div id="myContainer">
    <a class="my">My playlists</a>
    <a class="my">My events</a>
</div>
<div class="container" id="content">
    <div class="container" id="news"></div>
    <div class="container" id="music"></div>
    <div class="container" id="tracks"></div>
</div>
<div class="container" id="result">
</div>
<%@ include file="footer.jsp"%>
</body>
</html>
