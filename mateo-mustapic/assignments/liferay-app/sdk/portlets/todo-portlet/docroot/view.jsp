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

<div class="wrapper">
	<div class="inputDiv">
		<h2>To do list <span aria-hidden="true" class="icon-check"></span></h2>
			<input class="myInput" placeholder="Title of new task..." type="text">
			<span class="addItem">Add</span>
	</div>
	<span class="myCounter"></span> character(s) remaining
</div>