//
//  PlaylistTests.swift
//  Playlist29Tests
//
//  Created by RYAN GREENBURG on 9/18/19.
//  Copyright © 2019 RYAN GREENBURG. All rights reserved.
//

import Foundation
import XCTest
@testable import Playlist29

class PlaylistTests: XCTestCase {
    
    var sut: Playlist?
    
    override func setUp() {
        sut = Playlist(name: "Test Playlist")
    }
    
    func testPlaylistInit() {
        XCTAssertNotNil(sut)
    }
    
    func testEquatableAdherance() {
        XCTAssertTrue(sut == Playlist(name: "Test Playlist") && sut != Playlist(name: "Fail Case"))
    }
}
