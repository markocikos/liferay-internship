package com.company;

/**
 * Created by Matea Pjanic on 27/02/2017.
 */
public class Album {
    private String albumName;
    private Song[] songs;

    public String getAlbumName() {
        return albumName;
    }

    public void setAlbumName(String albumName) {
        this.albumName = albumName;
    }

    public Song[] getSongs() {
        return songs;
    }

    public void setSongs(Song[] songs) {
        this.songs = songs;
    }
}