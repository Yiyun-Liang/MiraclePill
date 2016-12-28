//
//  ViewController.swift
//  FanApp
//
//  Created by Yiyun Liang on 2016-12-27.
//  Copyright © 2016 Yiyun Liang. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    // TODO: read up on how protocols work in ios
    
    @IBOutlet weak var tableView: UITableView!
    
    var fanAppCells = [FanApp]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // this part is usually from a api or a csv file...
        let p1 = FanApp(imageUrl: "http://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Actors")
        let p2 = FanApp(imageUrl: "http://www.croshalgroup.com/wp-content/uploads/2015/05/Redfoo-Website.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/1w9DiGlZksU\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Stay Here")
        let p3 = FanApp(imageUrl: "http://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/vg_nvEGryA4\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Snow")
        let p4 = FanApp(imageUrl: "http://www.billboard.com/files/styles/article_main_image/public/media/lmfao-party-rock-anthem-2011-billboard-650.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gZIqW92GaTQ\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "At the Right Moment")
        let p5 = FanApp(imageUrl: "http://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tWyuglGCKgE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Children")
        
        fanAppCells.append(p1)
        fanAppCells.append(p2)
        fanAppCells.append(p3)
        fanAppCells.append(p4)
        fanAppCells.append(p5)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fanAppCells.count
    }

    // recycling cells
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // hey table view, give us a reusable PartyCell
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            // indexPath is the parameter for tableView, it follows fanAppCells.count below
            let fan = fanAppCells[indexPath.row]
            // updating every time a cell is recycled
            cell.updateUI(fanApp: fan)
            return cell
        } else {
            return UITableViewCell()
        }

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let fanApp = fanAppCells[indexPath.row]
        performSegue(withIdentifier: "VideoVC", sender: fanApp)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            if let fan = sender as? FanApp {
                destination.fanApp = fan
            }
        }
    }
    
}

