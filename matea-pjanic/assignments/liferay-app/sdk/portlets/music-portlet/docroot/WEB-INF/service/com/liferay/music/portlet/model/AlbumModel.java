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

package com.liferay.music.portlet.model;

import com.liferay.portal.kernel.bean.AutoEscape;
import com.liferay.portal.model.BaseModel;
import com.liferay.portal.model.CacheModel;
import com.liferay.portal.service.ServiceContext;

import com.liferay.portlet.expando.model.ExpandoBridge;

import java.io.Serializable;

/**
 * The base model interface for the Album service. Represents a row in the &quot;Music_Album&quot; database table, with each column mapped to a property of this class.
 *
 * <p>
 * This interface and its corresponding implementation {@link com.liferay.music.portlet.model.impl.AlbumModelImpl} exist only as a container for the default property accessors generated by ServiceBuilder. Helper methods and all application logic should be put in {@link com.liferay.music.portlet.model.impl.AlbumImpl}.
 * </p>
 *
 * @author Matea Pjanic
 * @see Album
 * @see com.liferay.music.portlet.model.impl.AlbumImpl
 * @see com.liferay.music.portlet.model.impl.AlbumModelImpl
 * @generated
 */
public interface AlbumModel extends BaseModel<Album> {
	/*
	 * NOTE FOR DEVELOPERS:
	 *
	 * Never modify or reference this interface directly. All methods that expect a album model instance should use the {@link Album} interface instead.
	 */

	/**
	 * Returns the primary key of this album.
	 *
	 * @return the primary key of this album
	 */
	public long getPrimaryKey();

	/**
	 * Sets the primary key of this album.
	 *
	 * @param primaryKey the primary key of this album
	 */
	public void setPrimaryKey(long primaryKey);

	/**
	 * Returns the album ID of this album.
	 *
	 * @return the album ID of this album
	 */
	public long getAlbumId();

	/**
	 * Sets the album ID of this album.
	 *
	 * @param albumId the album ID of this album
	 */
	public void setAlbumId(long albumId);

	/**
	 * Returns the bend ID of this album.
	 *
	 * @return the bend ID of this album
	 */
	public long getBendId();

	/**
	 * Sets the bend ID of this album.
	 *
	 * @param bendId the bend ID of this album
	 */
	public void setBendId(long bendId);

	/**
	 * Returns the image of this album.
	 *
	 * @return the image of this album
	 */
	@AutoEscape
	public String getImage();

	/**
	 * Sets the image of this album.
	 *
	 * @param image the image of this album
	 */
	public void setImage(String image);

	/**
	 * Returns the name of this album.
	 *
	 * @return the name of this album
	 */
	@AutoEscape
	public String getName();

	/**
	 * Sets the name of this album.
	 *
	 * @param name the name of this album
	 */
	public void setName(String name);

	/**
	 * Returns the year of this album.
	 *
	 * @return the year of this album
	 */
	public int getYear();

	/**
	 * Sets the year of this album.
	 *
	 * @param year the year of this album
	 */
	public void setYear(int year);

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
	public int compareTo(com.liferay.music.portlet.model.Album album);

	@Override
	public int hashCode();

	@Override
	public CacheModel<com.liferay.music.portlet.model.Album> toCacheModel();

	@Override
	public com.liferay.music.portlet.model.Album toEscapedModel();

	@Override
	public com.liferay.music.portlet.model.Album toUnescapedModel();

	@Override
	public String toString();

	@Override
	public String toXmlString();
}