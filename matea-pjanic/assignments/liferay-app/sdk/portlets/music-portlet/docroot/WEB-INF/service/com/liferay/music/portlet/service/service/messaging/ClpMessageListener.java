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

package com.liferay.music.portlet.service.service.messaging;

import com.liferay.music.portlet.service.service.AlbumLocalServiceUtil;
import com.liferay.music.portlet.service.service.AlbumServiceUtil;
import com.liferay.music.portlet.service.service.BendLocalServiceUtil;
import com.liferay.music.portlet.service.service.BendServiceUtil;
import com.liferay.music.portlet.service.service.ClpSerializer;
import com.liferay.music.portlet.service.service.EventLocalServiceUtil;
import com.liferay.music.portlet.service.service.EventServiceUtil;
import com.liferay.music.portlet.service.service.SongLocalServiceUtil;
import com.liferay.music.portlet.service.service.SongServiceUtil;

import com.liferay.portal.kernel.messaging.BaseMessageListener;
import com.liferay.portal.kernel.messaging.Message;

/**
 * @author Matea Pjanic
 */
public class ClpMessageListener extends BaseMessageListener {
	public static String getServletContextName() {
		return ClpSerializer.getServletContextName();
	}

	@Override
	protected void doReceive(Message message) throws Exception {
		String command = message.getString("command");
		String servletContextName = message.getString("servletContextName");

		if (command.equals("undeploy") &&
				servletContextName.equals(getServletContextName())) {
			AlbumLocalServiceUtil.clearService();

			AlbumServiceUtil.clearService();
			BendLocalServiceUtil.clearService();

			BendServiceUtil.clearService();
			EventLocalServiceUtil.clearService();

			EventServiceUtil.clearService();
			SongLocalServiceUtil.clearService();

			SongServiceUtil.clearService();
		}
	}
}