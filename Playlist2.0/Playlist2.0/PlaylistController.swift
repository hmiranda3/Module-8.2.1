//
//  PlaylistController.swift
//  Playlist2.0
//
//  Created by Habib Miranda on 5/18/16.
//  Copyright © 2016 littleJohns. All rights reserved.
//

import Foundation

class PlaylistController {
    
    static let sharedController = PlaylistController()
    
    var playlists: [Playlist] = []
    
    //CRUD
    
    func addPlaylist(name: String) {
        let playlist = Playlist(name: name)
        playlists.append(playlist)
    }
    
    func deletePlaylist(playlist: Playlist) {
        if let index = playlists.indexOf(playlist) {
            playlists.removeAtIndex(index)
        }
    }
    
    func addSongToPlaylist(song: Song, playlist: Playlist) {
        playlist.songs.append(song)
    }
    
    func deleteSongFromPlaylist(song: Song, playlist: Playlist) {
        if let index = playlist.songs.indexOf(song) {
            playlist.songs.removeAtIndex(index)
        }
    }
}


