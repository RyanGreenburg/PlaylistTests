//
//  SongTests.swift
//  Playlist29Tests
//
//  Created by RYAN GREENBURG on 9/18/19.
//  Copyright © 2019 RYAN GREENBURG. All rights reserved.
//

import Foundation
import XCTest
@testable import Playlist29

class SongTests: XCTestCase {
    
    var sut: Song?
    
    override func setUp() {
        sut = Song(title: "Test Title", artist: "Test Artist")
    }
}
