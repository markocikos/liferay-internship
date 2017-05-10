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

<div class="account-div">
	<div class="account-wrapper">
		<aui:a cssClass="account-link" href="javascript:;">
			<%= themeDisplay.getUser().getFirstName() %>
		</aui:a>
	</div>
</div>

<h2>
	<liferay-ui:message key="discovers-stream-and-share-music" />
</h2>

<portlet:resourceURL var="resourceURL" />

<div class="search-container">
	<aui:fieldset>
		<aui:input label="" name="music" placeholder="search-for-music" type="text"  ></aui:input>
	</aui:fieldset>

	<aui:input cssClass="search-button" data-resourceURL="<%= resourceURL.toString() %>" label="" name="search" type="button" value="Search"></aui:input>
</div>

<div class="front-page-content">
	<div class="block tracks">
		<h3>
			<liferay-ui:message key="what-is-new-on-soundsgood" />
		</h3>

		<div class="tracks-inner">

			<%
				InputStream is_tracks = getServletContext().getResourceAsStream("/json/bends.json");

				String jsonText_tracks = StringUtil.read(is_tracks);

				Type list_tracks = new TypeToken<ArrayList<Bend>>(){}.getType();

				Gson gson_tracks = new Gson();

				List<Bend> bends = gson_tracks.fromJson(jsonText_tracks, list_tracks);

				for (Bend bend : bends) {
					for (Album album : bend.getAlbums()) {
						if (album.getYear() == Year.now().getValue()) {
			%>

			<div class="artist">
				<div class="artist-photo" style="background-image: url(<%= PortalUtil.getPathContext(request) %>/<%= bend.getImage() %>)">
					<img class="play-button" src="<%= PortalUtil.getPathContext(request) %>/images/play.png">
				</div>

				<div class="artist-name">
					<%= bend.getName() %>
				</div>

				<div class="artist-album">
					<%= album.getName() %>
				</div>

			</div>

			<%
						}
					}
				}
			%>

		</div>
	</div>

	<div class="block events">
		<h3>
			<liferay-ui:message key="events-and-tickets" />
		</h3>

		<div class="events-inner">

			<%
				InputStream is_events = getServletContext().getResourceAsStream("/json/events.json");

				String jsonText_events = StringUtil.read(is_events);

				Type list_events = new TypeToken<ArrayList<Event>>(){}.getType();

				Gson gson_events = new Gson();

				List<Event> events = gson_events.fromJson(jsonText_events, list_events);
			%>

			<table>

				<%
					for (Event event : events) {
				%>

				<tr>
					<td>
						<%= event.get_artist() %>
					</td>

					<td class="tour-name">
						<liferay-ui:message key="<%= event.get_name() %>" />
					</td>

					<td>
						<liferay-ui:message key="<%= event.get_location_city() %>" />,

						<liferay-ui:message key="<%= event.get_location_country() %>" />
					</td>

					<td>

						<%
							Date date = new Date();
							date.setTime((long)event.get_date()*1000);
							Format userDateFormat = FastDateFormatFactoryUtil.getSimpleDateFormat("dd.MM.yyyy HH:mm", locale, user.getTimeZone());
						%>

						<%= userDateFormat.format(date) %>
					</td>

					<td class="more-info-td">
						<div class="more-info-wrapper">
							<aui:a cssClass="more-info" href="javascript:;">
								<liferay-ui:message key="more-info" />
							</aui:a>
						</div>
					</td>
				</tr>

				<%
					}
				%>

			</table>
		</div>
	</div>

	<div class="block footer">
		<liferay-ui:message key="soundsgood" />

		<liferay-ui:message key="contact" />
	</div>
</div>

<aui:script use="search-music">
	new Liferay.Portlet.SearchMusic(
		{
			namespace: '<portlet:namespace />'
		}
	);
</aui:script>