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

import com.liferay.portal.model.PersistedModel;

/**
 * The extended model interface for the Album service. Represents a row in the &quot;Music_Album&quot; database table, with each column mapped to a property of this class.
 *
 * @author Matea Pjanic
 * @see AlbumModel
 * @see com.liferay.music.portlet.model.impl.AlbumImpl
 * @see com.liferay.music.portlet.model.impl.AlbumModelImpl
 * @generated
 */
public interface Album extends AlbumModel, PersistedModel {
	/*
	 * NOTE FOR DEVELOPERS:
	 *
	 * Never modify this interface directly. Add methods to {@link com.liferay.music.portlet.model.impl.AlbumImpl} and rerun ServiceBuilder to automatically copy the method declarations to this interface.
	 */

	/**
	* NOTE FOR DEVELOPERS:
	*
	* Never reference this class directly. All methods that expect a album model instance should use the {@link com.liferay.music.portlet.model.Album} interface instead.
	*/
	public java.util.List<com.liferay.music.portlet.model.Song> getSongs();

	public void setSongs(
		java.util.List<com.liferay.music.portlet.model.Song> songs);
}