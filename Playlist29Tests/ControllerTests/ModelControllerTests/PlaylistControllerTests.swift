//
//  PlaylistControllerTests.swift
//  Playlist29Tests
//
//  Created by RYAN GREENBURG on 9/18/19.
//  Copyright © 2019 RYAN GREENBURG. All rights reserved.
//

import Foundation
import XCTest
@testable import Playlist29

class PlaylistControllerTests: XCTestCase {
    
    var sut: PlaylistController!
    // Test Objects
    let playlist = Playlist(name: "Test Playlist")
    let song = Song(title: "Test Song", artist: "Test Artist")
    
    override func setUp() {
        super.setUp()
        sut = PlaylistController.shared
    }
    
    override func tearDown() {
        super.tearDown()
        sut = nil
    }
    
    func testCreatePlaylist() {
        sut.createPlaylist(with: "Test Playlist")
        XCTAssert(!sut.playlists.isEmpty)
    }
    
    func testUpdatePlaylistWithSong() {
        sut.update(playlist, withSong: song)
        XCTAssert(playlist.songs.contains(song))
    }
    
    func testDeleteSongFromPlaylist() {
        playlist.songs.append(song)
        sut.delete(song, fromPlaylist: playlist)
        XCTAssertFalse(playlist.songs.contains(song))
    }
    
    func testDeletePlaylist() {
        let playlistToDelete = Playlist(name: "Delete Playlist")
        sut.delete(playlistToDelete)
        XCTAssertFalse(sut.playlists.contains(playlistToDelete))
    }
}
