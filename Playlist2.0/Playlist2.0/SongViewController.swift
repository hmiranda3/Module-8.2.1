//
//  SongViewController.swift
//  Playlist2.0
//
//  Created by Habib Miranda on 5/18/16.
//  Copyright © 2016 littleJohns. All rights reserved.
//

import UIKit

class SongViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var songTextField: UITextField!
    @IBOutlet weak var artistTextField: UITextField!
    @IBOutlet weak var myTableView: UITableView!
    
    var playlist: Playlist?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let playlist = playlist {
            navigationItem.title = playlist.name
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Action Button
    

    @IBAction func addButtonTapped(sender: AnyObject) {
        guard let playlist = playlist, let songName = songTextField.text, let artistName = artistTextField.text where songName.characters.count > 0 && artistName.characters.count > 0 else {
            return
        }
        SongController.createSong(songName, artist: artistName, playlist: playlist)
        songTextField.text = ""
        artistTextField.text = ""
        myTableView.reloadData()
    }
    
    // MARK: -Table view dat source methods
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return playlist?.songs.count ?? 0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("songCell", forIndexPath: indexPath)
        if let song = playlist?.songs[indexPath.row] {
            cell.textLabel?.text = song.title
            cell.detailTextLabel?.text = song.artist
        }
        
        
        return cell
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            guard let playlist = playlist else { return}
            let song = playlist.songs[indexPath.row]
            PlaylistController.sharedController.deleteSongFromPlaylist(song, playlist: playlist)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }
}



