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
	<div class="header">
		<h2>
			<liferay-ui:message key="to-do-list" />

			<i class="icon-check"></i>
		</h2>
	</div>

	<div class="welcome-message">
		<liferay-ui:message key="welcome" />

		<%= user.getFirstName() %>

		<img alt="<%= user.getFullName() %>" src="<%= user.getPortraitURL(themeDisplay) %>">
	</div>

	<liferay-ui:tabs names="task-list-tab,task-history-tab,profile-tab,contact-tab" refresh="false">
		<liferay-ui:section>
			<div class="task-container">
				<aui:form>
					<aui:input cssClass="input-item" name="task" placeholder="enter-task">
						<aui:validator name="required" />
					</aui:input>

					<aui:button cssClass="add-task" name="add" value="add" />
				</aui:form>

				<span class="counter">
					35
				</span>

				<liferay-ui:message key="characters-remaining" />

				<h3>
					<liferay-ui:message key="tasks" />
				</h3>

				<ul class="task-list" id="<portlet:namespace />todo-list">
					<li>
						<liferay-ui:message key="sample-task" />

						<aui:button cssClass="delete-task" icon="icon-remove" size="large" />
					</li>
				</ul>

				<div class="remaining-tasks-container">
					<div class="remaining-tasks-count" id="<portlet:namespace />remaining-tasks-count">
						1
					</div>

					<div class="remaining-tasks">
						<liferay-ui:message key="tasks-left" />
					</div>
				</div>

				<div class="finished-task" id="<portlet:namespace />finished-task">
					<ul class="finished-task-list"></ul>
				</div>
			</div>
		</liferay-ui:section>

		<liferay-ui:section>
			<div class="task-history">
				<h3>
					<liferay-ui:message key="task-history" />

					<i class="icon-book"></i>
				</h3>

				<div class="empty-task-history" id="<portlet:namespace />empty-task-history">
					<liferay-ui:message key="no-tasks" />
				</div>

				<ul class="history-list" id="<portlet:namespace />history-list"></ul>
			</div>
		</liferay-ui:section>

		<liferay-ui:section>
			<div class="profile-page"></div>
		</liferay-ui:section>

		<liferay-ui:section>
			<div class="form-container">
				<h3>
					<liferay-ui:message key="contact-us" />

					<i class="icon-envelope"></i>
				</h3>

				<div id="contact-form">
					<portlet:renderURL var="resultsURL">

						<portlet:param name="mvcPath" value= "/results.jsp"></portlet:param>
					</portlet:renderURL>

					<aui:form action="<%= resultsURL %>" class="contact-form" method="post">
					<table class="main-table">
						<tbody>
							<tr>
								<td class="title">
									<liferay-ui:message key="first-name" />
								</td>
								<td>
									<aui:input name="first-name" required="true" size="20" type="text" value="" />
								</td>
							</tr>
							<tr>
								<td class="title">
									<liferay-ui:message key="last-name" />
								</td>
								<td>
									<aui:input name="last-name" required="true" size="20" type="text" value="" />
								</td>
							</tr>
							<tr>
								<td class="title">
									<liferay-ui:message key="email" />
								</td>
								<td>
									<aui:input name="email" required="true" size="20" type="text"  value="" />
								</td>
							</tr>
							<tr>
								<td class="title">
									<liferay-ui:message key="gender" />
								</td>
								<td>
									<div class="slate styled-select">
										<aui:select name="gender">
											<option>
												<liferay-ui:message key="male" />
											</option>
											<option>
												<liferay-ui:message key="female" />
											</option>
										</aui:select>
									</div>
								</td>
							</tr>
							<tr>
								<td class="title">
									<liferay-ui:message key="date-of-birth" />
								</td>

								<td>
									<aui:input name="birthday" type="date" />
								</td>
							</tr>
							<tr>
								<td class="title">
									<liferay-ui:message key="problem" />
								</td>
								<td>
									<div class="slate styled-select">
										<aui:select name="problem">
											<option value="" selected disabled><liferay-ui:message key="please-select-a-topic" /></option>
											<option value="<liferay-ui:message key="task-list-problem" />"><liferay-ui:message key="cannot-add-tasks-to-list" /></option>
											<option value="<liferay-ui:message key="task-list-problem" />"><liferay-ui:message key="cannot-remove-tasks-from-the-list" /></option>
											<option value="<liferay-ui:message key="task-list-problem" />"><liferay-ui:message key="deleted-tasks-do-not-appear-in-history" /></option>
											<option value="<liferay-ui:message key="profile-problem" />"><liferay-ui:message key="profile-page-is-not-updated" /></option>
											<option value="<liferay-ui:message key="profile-problem" />"><liferay-ui:message key="cannot-logout" /></option>
											<option value="<liferay-ui:message key="other" />"><liferay-ui:message key="other" /></option>
										</aui:select>
									</div>
								</td>
							</tr>
							<tr>
								<td class="title">
									<liferay-ui:message key="your-message" />
								</td>
								<td>
									<aui:input cols="100" name="comment" rows="10" type="textarea" />
								</td>
							</tr>
						</tbody>
					</table>

					<div class="form-buttons">
						<aui:button cssClass="reset-form" name="reset" type="reset" value="clear" />

						<aui:button cssClass="submit-form" name="submit" type="" value="submit" />
					</div>
				</aui:form>
			</div>
		</liferay-ui:section>
	</liferay-ui:tabs>
</div>

<aui:script use="todo">
	new Liferay.Portlet.Todo(
		{
			namespace: '<portlet:namespace />',
			taskFinished: '<%= UnicodeLanguageUtil.get(pageContext, "task-finished") %>'
		}
	);
</aui:script>