<%
/**
 * Copyright (c) 2000-present Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
%>

<%@ include file="/init.jsp" %>

<portlet:defineObjects />

<head>
    <title>To do list</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.6/jquery-ui.min.js"></script>
</head>

<body>
<div id="myDIV">
    <h2>TO DO LIST </h2>
        <div id="inputDiv">
            <input type="text" id="myInput" placeholder="Title of new task...">
            <span id="addItem" class="addBtn">Add</span>
        </div>
</div>

<ul id="myUL">
    <li>Task 1</li>
    <li>Task 2</li>
</ul>

</body>


