<%@ page import="com.liferay.todo.FormController" %>
<%@ page import="com.liferay.todo.TodoPortlet" %><%--
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

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="/init.jsp" %>

<div class="list-container">

	<%@ include file="/header.jspf" %>

	<div class="form-container">
		<h3>
			<liferay-ui:message key="contact-us" />

			<i class="icon-envelope"></i>
		</h3>

		<div id="contact-form">
			<portlet:actionURL name="formAction" var="formActionURL">

				<portlet:param name="mvcPath" value= "/contact.jsp"></portlet:param>
			</portlet:actionURL>

			<liferay-ui:success key="success" message="success" />

			<liferay-ui:error key="error" message="error" />

			<aui:form action="<%= formActionURL %>" cssClass="contact-form" method="post" name="contact">

				<aui:input name="name" required="true" size="20" type="text" value="" />

				<aui:input name="last-name" required="true" size="20" type="text" value="" />

				<aui:input name="email" required="true" size="20" type="text"  value="" />

				<aui:select name="gender">
					<option>
						<liferay-ui:message key="male" />
					</option>
					<option>
						<liferay-ui:message key="female" />
					</option>
				</aui:select>

				<aui:input name="birthday" type="date" />

				<aui:select name="problem" required="true">
					<option value="" selected disabled><liferay-ui:message key="please-select-a-topic" /></option>
					<option value="<liferay-ui:message key="task-list-problem" />"><liferay-ui:message key="cannot-add-tasks-to-list" /></option>
					<option value="<liferay-ui:message key="task-list-problem" />"><liferay-ui:message key="cannot-remove-tasks-from-the-list" /></option>
					<option value="<liferay-ui:message key="task-list-problem" />"><liferay-ui:message key="deleted-tasks-do-not-appear-in-history" /></option>
					<option value="<liferay-ui:message key="profile-problem" />"><liferay-ui:message key="profile-page-is-not-updated" /></option>
					<option value="<liferay-ui:message key="profile-problem" />"><liferay-ui:message key="cannot-logout" /></option>
					<option value="<liferay-ui:message key="other" />"><liferay-ui:message key="other" /></option>
				</aui:select>

				<aui:input cols="50" name="comment" rows="6" type="textarea" />

				<div class="form-buttons">
					<aui:button cssClass="reset-form" name="reset" type="reset" value="clear" />

					<aui:button cssClass="submit-form" name="submit" type="submit" value="submit" />
				</div>
			</aui:form>
		</div>
	</div>
</div>