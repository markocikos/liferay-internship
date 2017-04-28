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

<div>
	<h2>
		<liferay-ui:message key="to-do-list" />

		<i class="icon-check"></i>
	</h2>

	<div class="task-container">
		<aui:input class="task" name="task" placeholder="title-of-the-new-task" type="text" />

		<span class="task-label">
			<liferay-ui:message key="add" />
		</span>
	</div>
</div>

<span class="counter"></span>

<liferay-ui:message key="characters-remaining" />

<ul class="taskUl">
		<li>Monday 17/April - Meeting at 1pm</li>
		<li>Saturday 9am - Football practice</li>
		<li>Thursday 9 pm - Dinner with friends</li>
	</ul>

<div class="yui3-skin-sam">
	<div id="modal">
		</div>
</div>

<aui:script use="addCloseButton">
	new Liferay.Portlet.addCloseButton(
	{
	namespace: '<portlet:namespace />'
	}
	);
</aui:script>