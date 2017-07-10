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

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="/init.jsp" %>

<%
	String firstName = request.getParameter("first-name");
	String lastName = request.getParameter("last-name");
	String email = request.getParameter("email");
	String gender = request.getParameter("gender");
	String problem = request.getParameter("problem");
	String dateOfBirth = request.getParameter("birthday");
	String comment = request.getParameter("comment");
%>

<div class="results-page">
	<h3>
		<liferay-ui:message key="your-message" />

		<i class="icon-envelope"></i>
	</h3>

	<div id="container">
		<table class="results-table">
			<tbody>
				<tr>
					<td class="title">
						<liferay-ui:message key="first-name" />
					</td>
					<td>
						<%= firstName %>
					</td>
				</tr>
				<tr>
					<td class="title">
						<liferay-ui:message key="last-name" /></td>
					<td>
						<%= lastName %>
					</td>
				</tr>
				<tr>
					<td class="title">
						<liferay-ui:message key="email" /></td>
					<td>
						<%= email %>
					</td>
				</tr>
				<tr>
					<td class="title">
						<liferay-ui:message key="gender" /></td>
					<td>
						<%= gender %>
					</td>
				</tr>
				<tr>
					<td class="title"><liferay-ui:message key="date-of-birth" /></td>
					<td>
						<%
							if (dateOfBirth != null) {
								out.println(dateOfBirth);
							}
							else {
						%>

						<liferay-ui:message key="unknown" />

						<%
							}
						%>
					</td>
				</tr>
				<tr>
					<td class="title"><liferay-ui:message key="problem" /></td>
					<td>
						<%
							if (problem != null) {
								out.println(problem);
							}
							else {
						%>

						<liferay-ui:message key="no-topic-selected" />
						<%
							}
						%>
					</td>
				</tr>
				<tr>
					<td class="title">
						<liferay-ui:message key="your-message" /></td>
					<td>
						<%= comment %>
					</td>
				</tr>
			</tbody>
		</table>

		<portlet:renderURL var="homeURL">

			<portlet:param name="mvcPath" value= "/view.jsp"></portlet:param>
		</portlet:renderURL>

		<div class="back-home">
			<aui:a href="<%= homeURL.toString() %>">

				<aui:button cssClass="back-button" name="submit" value="back-to-homepage" />
			</aui:a>
		</div>
	</div>
</div>