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
    func update(_ playlist: Playlist, withSong: Song) {
        
    }
    
    func delete(_ song: Song, fromPlaylist: Playlist) {
        
    }
}
