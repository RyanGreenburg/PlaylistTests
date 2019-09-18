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
    
    let playlist = Playlist(name: "Test Playlist")
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCreateSong() {
        SongController.createSong(with: "Test Song", artist: "Test Artist", playlist: playlist)
        XCTAssertTrue(playlist.songs.count > 0)
    }
}
