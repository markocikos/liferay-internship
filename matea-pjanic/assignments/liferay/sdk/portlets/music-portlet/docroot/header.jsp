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

<portlet:actionURL name="search" var="searchURL"></portlet:actionURL>

<aui:form action="<%= searchURL %>" id="searchMusicForm" onSubmit="event.preventDefault();">
    <aui:fieldset>
        <aui:input id="searchInput" name=""></aui:input>
        <aui:button id="searchBtn" type="submit" value="search" icon="icon-search"></aui:button>
    </aui:fieldset>
</aui:form>

