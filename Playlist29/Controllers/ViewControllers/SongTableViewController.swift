//
//  SongTableViewController.swift
//  Playlist29
//
//  Created by RYAN GREENBURG on 9/18/19.
//  Copyright © 2019 RYAN GREENBURG. All rights reserved.
//

import UIKit

class SongTableViewController: UITableViewController {

    var playlist: Playlist?
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var artistTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func addSongButtonTapped(_ sender: Any) {
        guard let playlist = playlist,
            let title = titleTextField.text, !title.isEmpty,
            let artist = artistTextField.text, !artist.isEmpty
            else { return}
        
        SongController.createSong(with: title, artist: artist, playlist: playlist)
        
        tableView.reloadData()
    }
    
    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return playlist?.songs.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "songCell", for: indexPath)

        let song = playlist?.songs[indexPath.row]
        cell.textLabel?.text = song?.title
        cell.detailTextLabel?.text = song?.artist

        return cell
    }

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            guard let playlist = playlist else { return }
            let song = playlist.songs[indexPath.row]
            PlaylistController.shared.delete(song, fromPlaylist: playlist)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }    
    }
}
