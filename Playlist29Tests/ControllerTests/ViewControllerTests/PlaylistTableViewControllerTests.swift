//
//  PlaylistTableViewControllerTests.swift
//  Playlist29Tests
//
//  Created by RYAN GREENBURG on 9/18/19.
//  Copyright © 2019 RYAN GREENBURG. All rights reserved.
//

import Foundation
import XCTest
@testable import Playlist29

class PlaylistTableViewControllerTests: XCTestCase {
    
    var sut: PlaylistTableViewController!
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let playlistTVC = storyboard.instantiateViewController(withIdentifier: "PlaylistTableViewController") as? PlaylistTableViewController
        
        sut = playlistTVC
        sut.beginAppearanceTransition(true, animated: false)
    }
    
    override func tearDown() {
        super.tearDown()
        sut.endAppearanceTransition()
        sut = nil
    }
    
    func testNumberOfRowsInSection() {
        let tableView = sut.tableView
        let numberOfRows = tableView?.numberOfRows(inSection: 0)
        XCTAssertEqual(numberOfRows, PlaylistController.shared.playlists.count)
    }
}
