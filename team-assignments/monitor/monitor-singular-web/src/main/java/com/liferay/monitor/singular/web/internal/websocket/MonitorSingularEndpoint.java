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

package com.liferay.monitor.singular.web.internal.websocket;

import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;

import java.io.IOException;

import javax.websocket.Endpoint;
import javax.websocket.EndpointConfig;
import javax.websocket.RemoteEndpoint;
import javax.websocket.Session;

import org.osgi.service.component.annotations.Component;

/**
 * @author Krešimir Čoko
 * @author Marko Čikoš
 */
@Component(
	immediate = true,
	property = {"org.osgi.http.websocket.endpoint.path=/o/singularEndpoint"},
	service = Endpoint.class
)
public class MonitorSingularEndpoint extends Endpoint {

	@Override
	public void onOpen(final Session session, EndpointConfig endpointConfig) {
		RemoteEndpoint.Basic remoteEndpoint = session.getBasicRemote();

		for (int i = 1; i <= 60; i++) {
			try {
				Thread.sleep(1000);
			}
			catch (InterruptedException ie) {
				_log.error("Sleep interrupted.", ie);
			}

			try {
				remoteEndpoint.sendText(
					"Last message from server received " + i + " seconds ago.");
			}
			catch (IOException ioe) {
				_log.error("Unable to send a text message.", ioe);
			}
		}
	}

	private static final Log _log = LogFactoryUtil.getLog(
		MonitorSingularEndpoint.class);

}