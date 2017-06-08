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

package com.liferay.music.portlet.service.model;

import com.liferay.portal.kernel.bean.AutoEscape;
import com.liferay.portal.model.BaseModel;
import com.liferay.portal.model.CacheModel;
import com.liferay.portal.service.ServiceContext;

import com.liferay.portlet.expando.model.ExpandoBridge;

import java.io.Serializable;

/**
 * The base model interface for the Event service. Represents a row in the &quot;Music_Event&quot; database table, with each column mapped to a property of this class.
 *
 * <p>
 * This interface and its corresponding implementation {@link com.liferay.music.portlet.service.model.impl.EventModelImpl} exist only as a container for the default property accessors generated by ServiceBuilder. Helper methods and all application logic should be put in {@link com.liferay.music.portlet.service.model.impl.EventImpl}.
 * </p>
 *
 * @author Matea Pjanic
 * @see Event
 * @see com.liferay.music.portlet.service.model.impl.EventImpl
 * @see com.liferay.music.portlet.service.model.impl.EventModelImpl
 * @generated
 */
public interface EventModel extends BaseModel<Event> {
	/*
	 * NOTE FOR DEVELOPERS:
	 *
	 * Never modify or reference this interface directly. All methods that expect a event model instance should use the {@link Event} interface instead.
	 */

	/**
	 * Returns the primary key of this event.
	 *
	 * @return the primary key of this event
	 */
	public long getPrimaryKey();

	/**
	 * Sets the primary key of this event.
	 *
	 * @param primaryKey the primary key of this event
	 */
	public void setPrimaryKey(long primaryKey);

	/**
	 * Returns the event ID of this event.
	 *
	 * @return the event ID of this event
	 */
	public long getEventId();

	/**
	 * Sets the event ID of this event.
	 *
	 * @param eventId the event ID of this event
	 */
	public void setEventId(long eventId);

	/**
	 * Returns the artist of this event.
	 *
	 * @return the artist of this event
	 */
	@AutoEscape
	public String getArtist();

	/**
	 * Sets the artist of this event.
	 *
	 * @param artist the artist of this event
	 */
	public void setArtist(String artist);

	/**
	 * Returns the city of this event.
	 *
	 * @return the city of this event
	 */
	@AutoEscape
	public String getCity();

	/**
	 * Sets the city of this event.
	 *
	 * @param city the city of this event
	 */
	public void setCity(String city);

	/**
	 * Returns the country of this event.
	 *
	 * @return the country of this event
	 */
	@AutoEscape
	public String getCountry();

	/**
	 * Sets the country of this event.
	 *
	 * @param country the country of this event
	 */
	public void setCountry(String country);

	/**
	 * Returns the date of this event.
	 *
	 * @return the date of this event
	 */
	public long getDate();

	/**
	 * Sets the date of this event.
	 *
	 * @param date the date of this event
	 */
	public void setDate(long date);

	/**
	 * Returns the name of this event.
	 *
	 * @return the name of this event
	 */
	@AutoEscape
	public String getName();

	/**
	 * Sets the name of this event.
	 *
	 * @param name the name of this event
	 */
	public void setName(String name);

	@Override
	public boolean isNew();

	@Override
	public void setNew(boolean n);

	@Override
	public boolean isCachedModel();

	@Override
	public void setCachedModel(boolean cachedModel);

	@Override
	public boolean isEscapedModel();

	@Override
	public Serializable getPrimaryKeyObj();

	@Override
	public void setPrimaryKeyObj(Serializable primaryKeyObj);

	@Override
	public ExpandoBridge getExpandoBridge();

	@Override
	public void setExpandoBridgeAttributes(BaseModel<?> baseModel);

	@Override
	public void setExpandoBridgeAttributes(ExpandoBridge expandoBridge);

	@Override
	public void setExpandoBridgeAttributes(ServiceContext serviceContext);

	@Override
	public Object clone();

	@Override
	public int compareTo(com.liferay.music.portlet.service.model.Event event);

	@Override
	public int hashCode();

	@Override
	public CacheModel<com.liferay.music.portlet.service.model.Event> toCacheModel();

	@Override
	public com.liferay.music.portlet.service.model.Event toEscapedModel();

	@Override
	public com.liferay.music.portlet.service.model.Event toUnescapedModel();

	@Override
	public String toString();

	@Override
	public String toXmlString();
}