//
//  PlaylistController.swift
//  Playlist29
//
//  Created by RYAN GREENBURG on 9/18/19.
//  Copyright © 2019 RYAN GREENBURG. All rights reserved.
//

import Foundation

class PlaylistController {
    
    static let shared = PlaylistController()
    
    var playlists: [Playlist] = []
    
    // MARK: - CRUD
    // Create
    func createPlaylist(with name: String) {
        let newPlaylist = Playlist(name: name)
        playlists.append(newPlaylist)
    }
    
    // Update
    func update(_ playlist: Playlist, withSong song: Song) {
        playlist.songs.append(song)
    }
    
    func delete(_ song: Song, fromPlaylist playlist: Playlist) {
        guard let index = playlist.songs.firstIndex(of: song) else { return }
        playlist.songs.remove(at: index)
    }
    
    func delete(_ playlist: Playlist) {
        guard let index = playlists.firstIndex(of: playlist) else { return }
        playlists.remove(at: index)
    }
}
