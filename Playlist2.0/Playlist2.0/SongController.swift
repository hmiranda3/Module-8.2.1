//
//  SongController.swift
//  Playlist2.0
//
//  Created by Habib Miranda on 5/18/16.
//  Copyright © 2016 littleJohns. All rights reserved.
//

import Foundation

class SongController {
    
    // CRUD
    
    static func createSong(title: String, artist: String, playlist: Playlist) {
        let song = Song(title: title, artist: artist)
        PlaylistController.sharedController.addSongToPlaylist(song, playlist: playlist)
    }
}
