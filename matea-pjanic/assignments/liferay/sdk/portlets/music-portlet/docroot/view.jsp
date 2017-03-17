<%--
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
--%>

<%@ include file="/init.jsp" %>

<%@ include file="/header.jsp" %>

<div id="searchResult"></div>

<aui:script use="event, node">
    var btn = A.one("#searchBtn");
    var input = A.one("#<portlet:namespace />searchInput");
    var result = A.one("#searchResult");
    btn.on('click', function(event){
    inp = input.val();
    result.append('<p id="info"></p>');
    info = A.one("#info");
    if(inp != '') {
    info.html('Searching for ' + inp + '...');
    }
    });
</aui:script>