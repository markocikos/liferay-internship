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

package com.liferay.music.portlet.model.impl;

import com.liferay.music.portlet.model.Song;
import com.liferay.music.portlet.model.SongModel;
import com.liferay.music.portlet.model.SongSoap;

import com.liferay.portal.kernel.bean.AutoEscapeBeanHandler;
import com.liferay.portal.kernel.json.JSON;
import com.liferay.portal.kernel.util.GetterUtil;
import com.liferay.portal.kernel.util.ProxyUtil;
import com.liferay.portal.kernel.util.StringBundler;
import com.liferay.portal.kernel.util.StringPool;
import com.liferay.portal.model.CacheModel;
import com.liferay.portal.model.impl.BaseModelImpl;
import com.liferay.portal.service.ServiceContext;

import com.liferay.portlet.expando.model.ExpandoBridge;
import com.liferay.portlet.expando.util.ExpandoBridgeFactoryUtil;

import java.io.Serializable;

import java.sql.Types;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * The base model implementation for the Song service. Represents a row in the &quot;Music_Song&quot; database table, with each column mapped to a property of this class.
 *
 * <p>
 * This implementation and its corresponding interface {@link com.liferay.music.portlet.model.SongModel} exist only as a container for the default property accessors generated by ServiceBuilder. Helper methods and all application logic should be put in {@link SongImpl}.
 * </p>
 *
 * @author Matea Pjanic
 * @see SongImpl
 * @see com.liferay.music.portlet.model.Song
 * @see com.liferay.music.portlet.model.SongModel
 * @generated
 */
@JSON(strict = true)
public class SongModelImpl extends BaseModelImpl<Song> implements SongModel {
	/*
	 * NOTE FOR DEVELOPERS:
	 *
	 * Never modify or reference this class directly. All methods that expect a song model instance should use the {@link com.liferay.music.portlet.model.Song} interface instead.
	 */
	public static final String TABLE_NAME = "Music_Song";
	public static final Object[][] TABLE_COLUMNS = {
			{ "songId", Types.BIGINT },
			{ "albumId", Types.BIGINT },
			{ "name", Types.VARCHAR }
		};
	public static final String TABLE_SQL_CREATE = "create table Music_Song (songId LONG not null primary key,albumId LONG,name VARCHAR(75) null)";
	public static final String TABLE_SQL_DROP = "drop table Music_Song";
	public static final String ORDER_BY_JPQL = " ORDER BY song.songId ASC";
	public static final String ORDER_BY_SQL = " ORDER BY Music_Song.songId ASC";
	public static final String DATA_SOURCE = "liferayDataSource";
	public static final String SESSION_FACTORY = "liferaySessionFactory";
	public static final String TX_MANAGER = "liferayTransactionManager";
	public static final boolean ENTITY_CACHE_ENABLED = GetterUtil.getBoolean(com.liferay.util.service.ServiceProps.get(
				"value.object.entity.cache.enabled.com.liferay.music.portlet.model.Song"),
			true);
	public static final boolean FINDER_CACHE_ENABLED = GetterUtil.getBoolean(com.liferay.util.service.ServiceProps.get(
				"value.object.finder.cache.enabled.com.liferay.music.portlet.model.Song"),
			true);
	public static final boolean COLUMN_BITMASK_ENABLED = GetterUtil.getBoolean(com.liferay.util.service.ServiceProps.get(
				"value.object.column.bitmask.enabled.com.liferay.music.portlet.model.Song"),
			true);
	public static long ALBUMID_COLUMN_BITMASK = 1L;
	public static long SONGID_COLUMN_BITMASK = 2L;

	/**
	 * Converts the soap model instance into a normal model instance.
	 *
	 * @param soapModel the soap model instance to convert
	 * @return the normal model instance
	 */
	public static Song toModel(SongSoap soapModel) {
		if (soapModel == null) {
			return null;
		}

		Song model = new SongImpl();

		model.setSongId(soapModel.getSongId());
		model.setAlbumId(soapModel.getAlbumId());
		model.setName(soapModel.getName());

		return model;
	}

	/**
	 * Converts the soap model instances into normal model instances.
	 *
	 * @param soapModels the soap model instances to convert
	 * @return the normal model instances
	 */
	public static List<Song> toModels(SongSoap[] soapModels) {
		if (soapModels == null) {
			return null;
		}

		List<Song> models = new ArrayList<Song>(soapModels.length);

		for (SongSoap soapModel : soapModels) {
			models.add(toModel(soapModel));
		}

		return models;
	}

	public static final long LOCK_EXPIRATION_TIME = GetterUtil.getLong(com.liferay.util.service.ServiceProps.get(
				"lock.expiration.time.com.liferay.music.portlet.model.Song"));

	public SongModelImpl() {
	}

	@Override
	public long getPrimaryKey() {
		return _songId;
	}

	@Override
	public void setPrimaryKey(long primaryKey) {
		setSongId(primaryKey);
	}

	@Override
	public Serializable getPrimaryKeyObj() {
		return _songId;
	}

	@Override
	public void setPrimaryKeyObj(Serializable primaryKeyObj) {
		setPrimaryKey(((Long)primaryKeyObj).longValue());
	}

	@Override
	public Class<?> getModelClass() {
		return Song.class;
	}

	@Override
	public String getModelClassName() {
		return Song.class.getName();
	}

	@Override
	public Map<String, Object> getModelAttributes() {
		Map<String, Object> attributes = new HashMap<String, Object>();

		attributes.put("songId", getSongId());
		attributes.put("albumId", getAlbumId());
		attributes.put("name", getName());

		return attributes;
	}

	@Override
	public void setModelAttributes(Map<String, Object> attributes) {
		Long songId = (Long)attributes.get("songId");

		if (songId != null) {
			setSongId(songId);
		}

		Long albumId = (Long)attributes.get("albumId");

		if (albumId != null) {
			setAlbumId(albumId);
		}

		String name = (String)attributes.get("name");

		if (name != null) {
			setName(name);
		}
	}

	@JSON
	@Override
	public long getSongId() {
		return _songId;
	}

	@Override
	public void setSongId(long songId) {
		_songId = songId;
	}

	@JSON
	@Override
	public long getAlbumId() {
		return _albumId;
	}

	@Override
	public void setAlbumId(long albumId) {
		_columnBitmask |= ALBUMID_COLUMN_BITMASK;

		if (!_setOriginalAlbumId) {
			_setOriginalAlbumId = true;

			_originalAlbumId = _albumId;
		}

		_albumId = albumId;
	}

	public long getOriginalAlbumId() {
		return _originalAlbumId;
	}

	@JSON
	@Override
	public String getName() {
		if (_name == null) {
			return StringPool.BLANK;
		}
		else {
			return _name;
		}
	}

	@Override
	public void setName(String name) {
		_name = name;
	}

	public long getColumnBitmask() {
		return _columnBitmask;
	}

	@Override
	public ExpandoBridge getExpandoBridge() {
		return ExpandoBridgeFactoryUtil.getExpandoBridge(0,
			Song.class.getName(), getPrimaryKey());
	}

	@Override
	public void setExpandoBridgeAttributes(ServiceContext serviceContext) {
		ExpandoBridge expandoBridge = getExpandoBridge();

		expandoBridge.setAttributes(serviceContext);
	}

	@Override
	public Song toEscapedModel() {
		if (_escapedModel == null) {
			_escapedModel = (Song)ProxyUtil.newProxyInstance(_classLoader,
					_escapedModelInterfaces, new AutoEscapeBeanHandler(this));
		}

		return _escapedModel;
	}

	@Override
	public Object clone() {
		SongImpl songImpl = new SongImpl();

		songImpl.setSongId(getSongId());
		songImpl.setAlbumId(getAlbumId());
		songImpl.setName(getName());

		songImpl.resetOriginalValues();

		return songImpl;
	}

	@Override
	public int compareTo(Song song) {
		long primaryKey = song.getPrimaryKey();

		if (getPrimaryKey() < primaryKey) {
			return -1;
		}
		else if (getPrimaryKey() > primaryKey) {
			return 1;
		}
		else {
			return 0;
		}
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}

		if (!(obj instanceof Song)) {
			return false;
		}

		Song song = (Song)obj;

		long primaryKey = song.getPrimaryKey();

		if (getPrimaryKey() == primaryKey) {
			return true;
		}
		else {
			return false;
		}
	}

	@Override
	public int hashCode() {
		return (int)getPrimaryKey();
	}

	@Override
	public void resetOriginalValues() {
		SongModelImpl songModelImpl = this;

		songModelImpl._originalAlbumId = songModelImpl._albumId;

		songModelImpl._setOriginalAlbumId = false;

		songModelImpl._columnBitmask = 0;
	}

	@Override
	public CacheModel<Song> toCacheModel() {
		SongCacheModel songCacheModel = new SongCacheModel();

		songCacheModel.songId = getSongId();

		songCacheModel.albumId = getAlbumId();

		songCacheModel.name = getName();

		String name = songCacheModel.name;

		if ((name != null) && (name.length() == 0)) {
			songCacheModel.name = null;
		}

		return songCacheModel;
	}

	@Override
	public String toString() {
		StringBundler sb = new StringBundler(7);

		sb.append("{songId=");
		sb.append(getSongId());
		sb.append(", albumId=");
		sb.append(getAlbumId());
		sb.append(", name=");
		sb.append(getName());
		sb.append("}");

		return sb.toString();
	}

	@Override
	public String toXmlString() {
		StringBundler sb = new StringBundler(13);

		sb.append("<model><model-name>");
		sb.append("com.liferay.music.portlet.model.Song");
		sb.append("</model-name>");

		sb.append(
			"<column><column-name>songId</column-name><column-value><![CDATA[");
		sb.append(getSongId());
		sb.append("]]></column-value></column>");
		sb.append(
			"<column><column-name>albumId</column-name><column-value><![CDATA[");
		sb.append(getAlbumId());
		sb.append("]]></column-value></column>");
		sb.append(
			"<column><column-name>name</column-name><column-value><![CDATA[");
		sb.append(getName());
		sb.append("]]></column-value></column>");

		sb.append("</model>");

		return sb.toString();
	}

	private static ClassLoader _classLoader = Song.class.getClassLoader();
	private static Class<?>[] _escapedModelInterfaces = new Class[] { Song.class };
	private long _songId;
	private long _albumId;
	private long _originalAlbumId;
	private boolean _setOriginalAlbumId;
	private String _name;
	private long _columnBitmask;
	private Song _escapedModel;
}