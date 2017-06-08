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

package com.liferay.music.portlet.service.service.impl;

import com.liferay.music.portlet.service.model.Album;
import com.liferay.music.portlet.service.model.Bend;
import com.liferay.music.portlet.service.model.Song;
import com.liferay.music.portlet.service.service.AlbumLocalServiceUtil;
import com.liferay.music.portlet.service.service.base.BendLocalServiceBaseImpl;
import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.exception.SystemException;

import java.util.List;

/**
 * The implementation of the bend local service.
 *
 * <p>
 * All custom service methods should be put in this class. Whenever methods are added, rerun ServiceBuilder to copy their definitions into the {@link com.liferay.music.portlet.service.service.BendLocalService} interface.
 *
 * <p>
 * This is a local service. Methods of this service will not have security checks based on the propagated JAAS credentials because this service can only be accessed from within the same VM.
 * </p>
 *
 * @author Matea Pjanic
 * @see com.liferay.music.portlet.service.service.base.BendLocalServiceBaseImpl
 * @see com.liferay.music.portlet.service.service.BendLocalServiceUtil
 */
public class BendLocalServiceImpl extends BendLocalServiceBaseImpl {

	/**
	 * NOTE FOR DEVELOPERS:
	 *
	 * Never reference this interface directly. Always use {@link com.liferay.music.portlet.service.service.BendLocalServiceUtil} to access the bend local service.
	 */

	public Bend findBend(String name) throws PortalException, SystemException {
		Bend bend = bendPersistence.findByName(name);

		List<Album> albums = getBendAlbums(bend.getBendId());

		for (Album album : albums) {
			List<Song> songs = AlbumLocalServiceUtil.getAlbumSongs(
					album.getAlbumId());

			album.setSongs(songs);
		}

		bend.setAlbums(albums);

		return bend;
	}

	public List<Album> getBendAlbums(long bendId)
		throws PortalException, SystemException {

		return albumPersistence.findByBendId(bendId);
	}

}