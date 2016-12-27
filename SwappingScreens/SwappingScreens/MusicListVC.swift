//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by Yiyun Liang on 2016-12-26.
//  Copyright © 2016 Yiyun Liang. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.gray
    }
  
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    // for generic segues
    @IBAction func loadThirdScreenPressed(_ sender: Any) {
        let songTitle = "PPAP"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }
    
    // passing data between screens
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? PlaySongVC{
            if let song = sender as? String{
                destination.selectedSong = song
            }
        }
        
    }

}
