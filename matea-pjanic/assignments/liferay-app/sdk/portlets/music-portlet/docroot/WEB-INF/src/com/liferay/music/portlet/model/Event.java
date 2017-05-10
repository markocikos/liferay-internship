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

/**
 * @author Matea Pjanic
 */
public class Event {

	public String get_artist() {
		return _artist;
	}

	public int get_date() {
		return _date;
	}

	public String get_location_city() {
		return _location_city;
	}

	public String get_location_country() {
		return _location_country;
	}

	public String get_name() {
		return _name;
	}

	public void set_artist(String _artist) {
		this._artist = _artist;
	}

	public void set_date(int _date) {
		this._date = _date;
	}

	public void set_location_city(String _location_city) {
		this._location_city = _location_city;
	}

	public void set_location_country(String _location_country) {
		this._location_country = _location_country;
	}

	public void set_name(String _name) {
		this._name = _name;
	}

	private String _artist;
	private int _date;
	private String _location_city;
	private String _location_country;
	private String _name;

}