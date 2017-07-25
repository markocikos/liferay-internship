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

<div class="list-container">

	<%@ include file="/header.jspf" %>

	<div class="form-container">
		<h3>
			<liferay-ui:message key="contact-us" />

			<i class="icon-envelope"></i>
		</h3>

		<portlet:actionURL name="submitContactForm" var="formActionURL">
			<portlet:param name="redirect" value="/contact.jsp"></portlet:param>
		</portlet:actionURL>

		<liferay-ui:success key="success" message="success" />

		<liferay-ui:error key="error" message="error" />

		<aui:form action="<%= formActionURL %>" cssClass="contact-form" method="post" name="contact">

			<aui:input name="name" required="true" size="20" type="text" value="" />

			<aui:input name="last-name" required="true" size="20" type="text" value="" />

			<aui:input name="email" required="true" size="20" type="text"  value="" />

			<aui:select name="gender">
				<aui:option>
					<liferay-ui:message key="male" />
				</aui:option>
				<aui:option>
					<liferay-ui:message key="female" />
				</aui:option>
			</aui:select>

			<aui:input name="birthday" type="date" />

			<aui:select name="problem" required="true">
				<aui:option selected="%= true %" value="1"><liferay-ui:message key="please-select-a-topic" /></aui:option>
				<aui:option value="2"><liferay-ui:message key="cannot-add-tasks-to-list" /></aui:option>
				<aui:option value="3"><liferay-ui:message key="cannot-remove-tasks-from-the-list" /></aui:option>
				<aui:option value="4"><liferay-ui:message key="deleted-tasks-do-not-appear-in-history" /></aui:option>
				<aui:option value="5"><liferay-ui:message key="profile-page-is-not-updated" /></aui:option>
				<aui:option value="6"><liferay-ui:message key="cannot-logout" /></aui:option>
				<aui:option value="7"><liferay-ui:message key="other" /></aui:option>
			</aui:select>

			<aui:input cols="50" name="comment" rows="6" type="textarea" />
			<div class="form-buttons">
				<aui:button-row>
					<aui:button cssClass="reset-form" name="reset" type="reset" value="clear" />

					<aui:button cssClass="submit-form" name="submit" type="submit" value="submit" />
				</aui:button-row>
			</div>

		</aui:form>
	</div>
</div>