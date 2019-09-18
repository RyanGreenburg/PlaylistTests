//
//  SongControllerTests.swift
//  Playlist29Tests
//
//  Created by RYAN GREENBURG on 9/18/19.
//  Copyright © 2019 RYAN GREENBURG. All rights reserved.
//

import Foundation
import XCTest
@testable import Playlist29

class SongControllerTests: XCTestCase {
    
    var sut: SongController!
    let playlist = Playlist(name: "Test Playlist")
    
    override func setUp() {
        super.setUp()
        sut = SongController.shared
    }
    
    override func tearDown() {
        super.tearDown()
        sut = nil
    }
    
    func testCreateSong() {
        sut.createSong(with: "Test Song", artist: "Test Artist", playlist: playlist)
        XCTAssertTrue(playlist.songs.count > 0)
    }
    
    func testDeleteSong() {
        let songToDelete = Song(title: "Test Song", artist: "Test Artist")
        sut.delete(songToDelete, from: playlist)
        XCTAssertFalse(playlist.songs.contains(songToDelete))
    }
}
