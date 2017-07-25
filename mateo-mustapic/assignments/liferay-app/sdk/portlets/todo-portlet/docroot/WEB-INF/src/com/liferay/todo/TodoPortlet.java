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

package com.liferay.todo;

import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.servlet.SessionErrors;
import com.liferay.portal.kernel.servlet.SessionMessages;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.util.PortalUtil;
import com.liferay.util.bridges.mvc.MVCPortlet;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletException;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;
import java.io.IOException;

/**
 * @author Mateo Mustapic
 */

public class TodoPortlet extends MVCPortlet {

	public void doView(
			RenderRequest renderRequest, RenderResponse renderResponse)
		throws IOException, PortletException {
			if (_log.isInfoEnabled()) {
				_log.info("Render view of Todo Portlet");
			}

			super.doView(renderRequest, renderResponse);
	}

	public void submitContactForm(
		ActionRequest actionRequest, ActionResponse actionResponse)
			throws Exception {
				if (_log.isInfoEnabled()) {
					_log.info("Process action for contact form works");
				}

				String name = ParamUtil.getString(
					actionRequest, "name", "No name received");

				String lastName = ParamUtil.getString(
					actionRequest, "last-name", "No last name received");

				String email = ParamUtil.getString(
					actionRequest, "email", "No email received");

				String birthday = ParamUtil.getString(
					actionRequest, "birthday", "No birthday received");

				String comment = ParamUtil.getString(
					actionRequest, "comment", "No comment received");

				if (comment.isEmpty()) {
					SessionErrors.add(actionRequest, "error");

					SessionMessages.add(
						actionRequest, PortalUtil.getPortletId(actionRequest) +
						SessionMessages.KEY_SUFFIX_HIDE_DEFAULT_ERROR_MESSAGE);
				}

				else {
					if (_log.isInfoEnabled()) {
						_log.info(
							"Form results: " +
								"name: " +
								name + ", last name: " +
								lastName + ", email: " +
								email + ", birthday: " +
								birthday + ", comment: " +
								comment);
					}

					SessionMessages.add(actionRequest, "success");
				}

				actionResponse.setRenderParameter("mvcPath", "/contact.jsp");
	}

	private static Log _log = LogFactoryUtil.getLog(TodoPortlet.class);

}