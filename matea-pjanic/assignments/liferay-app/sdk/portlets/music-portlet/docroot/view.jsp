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

<div class="accountdiv">
	<div class="accountwrapper">
		<a class="accountlink"><%= themeDisplay.getUser().getFirstName() %></a>
	</div>
</div>
<h3>Discover, stream & share music</h3>

<liferay-portlet:actionURL name="search" var="searchURL" />

<aui:form action="<%= searchURL %>" name="fm">
	<aui:fieldset>
		<aui:input label="" name="music" placeholder="search-for-music" type="text" />
	</aui:fieldset>

	<aui:button type="submit" value="search" />
</aui:form>