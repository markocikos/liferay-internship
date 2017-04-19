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
<div class="wrapper">
	<div class="myDIV">
		<h2>To do list <span aria-hidden="true" class="icon-check"></span></h2>
		<div class="inputDiv">
			<input class="myInput" placeholder="Title of new task..." type="text">
			<span class="addItem">Add</span>
		</div>
	</div>
	<span class="myCounter"></span> character(s) remaining

	<ul class="myUL">
		<li>Monday 17/April - Meeting at 1pm</li>
		<li>Saturday 9am - Football practice</li>
		<li>Thursday 9 pm - Dinner with friends</li>
	</ul>

	<div class="yui3-skin-sam">
		<div id="modal"></div>
	</div>

	<h2>Task history</h2>
	<div class="addListBtn">
		<span class="addList">SHOW ALL DATA</span>
	</div>
	<div id="tasksTable">
		<table class="center" id="toDoTable">
			<thead>
				<tr class="tHeader">
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
	</div>
	<div class="total">
	</div>
</div>