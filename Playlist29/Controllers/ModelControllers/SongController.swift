//
//  SongController.swift
//  Playlist29
//
//  Created by RYAN GREENBURG on 9/18/19.
//  Copyright © 2019 RYAN GREENBURG. All rights reserved.
//

import Foundation

class SongController {
    
    static let shared = SongController()
    
    // MARK: - CRUD
    
    // Create
    func createSong(with title: String, artist: String, playlist: Playlist) {
        let newSong = Song(title: title, artist: artist)
        PlaylistController.shared.update(playlist, withSong: newSong)
    }
    
    // Delete
    func delete(_ song: Song, from playlist: Playlist) {
        PlaylistController.shared.delete(song, fromPlaylist: playlist)
    }
}
