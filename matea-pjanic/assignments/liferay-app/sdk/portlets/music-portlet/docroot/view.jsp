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

	<div class="accountdiv">
		<div class="accountwrapper">
			<aui:a class="accountlink" href="javascript:;"><%= themeDisplay.getUser().getFirstName() %>
			</aui:a>
		</div>
	</div>

	<h2>
		<liferay-ui:message key="discovers-stream-and-share-music" />
	</h2>

	<liferay-portlet:actionURL name="search" var="searchURL" />

	<aui:form action="<%= searchURL %>" name="fm">
		<aui:fieldset>
			<aui:input label="" name="music" placeholder="search-for-music" type="text" />
		</aui:fieldset>

		<aui:button type="submit" value="search" />
	</aui:form>

	<div class="frontpagecontent">
		<hr>

		<div class="tracks">
			<h3>
				<liferay-ui:message key="what-is-new-on-soundsgood" />
			</h3>

			<div class="tracksinner">
				<div class="adele">
					<div class="adelephoto">
						<img class="playbutton" src="<%= PortalUtil.getPathContext(request) %>/images/play.png">
					</div>
					<p>
						<liferay-ui:message key="adele" />
					</p>
					<p>
						<liferay-ui:message key="send-my-love" />
					</p>
				</div>
				<div class="chainsmokers">
					<div class="chainsmokersphoto">
						<img class="playbutton" src="<%= PortalUtil.getPathContext(request) %>/images/play.png">
					</div>
					<p>
						<liferay-ui:message key="chainsmokers" />
					</p>
					<p>
						<liferay-ui:message key="something-just-like-this" />
					</p>
				</div>
				<div class="deadmaus">
					<div class="deadmausphoto">
						<img class="playbutton" src="<%= PortalUtil.getPathContext(request) %>/images/play.png">
					</div>
					<p>
						<liferay-ui:message key="deadmaus" />
					</p>
					<p>
						<liferay-ui:message key="saved" />
					</p>
				</div>
				<div class="kodakblack">
					<div class="kodakblackphoto">
						<img class="playbutton" src="<%= PortalUtil.getPathContext(request) %>/images/play.png">
					</div>
					<p>
						<liferay-ui:message key="kodak-black" />
					</p>
					<p>
						<liferay-ui:message key="tunnel-vision" />
					</p>
				</div>
				<div class="chris">
					<div class="chrisphoto">
						<img class="playbutton" src="<%= PortalUtil.getPathContext(request) %>/images/play.png">
					</div>
					<p>
						<liferay-ui:message key="chris-stapleton" />
					</p>
					<p>
						<liferay-ui:message key="broken-halos" />
					</p>
				</div>

				<div class="sturgill">
					<div class="sturgillphoto">
						<img class="playbutton" src="<%= PortalUtil.getPathContext(request) %>/images/play.png">
					</div>
					<p>
						<liferay-ui:message key="sturgill-simpson" />
					</p>
					<p>
						<liferay-ui:message key="in-bloom" />
					</p>
				</div>
				<div class="lera">
					<div class="leraphoto">
						<img class="playbutton" src="<%= PortalUtil.getPathContext(request) %>/images/play.png">
					</div>
					<p>
						<liferay-ui:message key="lera-lynn" />
					</p>
					<p>
						<liferay-ui:message key="my-least-favorite-life" />
					</p>
				</div>
				<div class="omam">
					<div class="omamphoto">
						<img class="playbutton" src="<%= PortalUtil.getPathContext(request) %>/images/play.png">
					</div>
					<p>
						<liferay-ui:message key="of-monsters-and-man" />
					</p>
					<p>
						<liferay-ui:message key="crystals" />
					</p>
				</div>
				<div class="jose">
					<div class="josephoto">
						<img class="playbutton" src="<%= PortalUtil.getPathContext(request) %>/images/play.png">
					</div>
					<p>
						<liferay-ui:message key="jose-gonzales" />
					</p>
					<p>
						<liferay-ui:message key="every-age" />
					</p>
				</div>

				<div class="alicephoebe">
					<div class="alicephoebephoto">
						<img class="playbutton" src="<%= PortalUtil.getPathContext(request) %>/images/play.png">
					</div>
					<p>
						<liferay-ui:message key="alice-phoebe-lou" />
					</p>
					<p>
						<liferay-ui:message key="orbit" />
					</p>
				</div>
		</div>
		</div>

	</div>