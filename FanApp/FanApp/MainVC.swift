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
        let p3 = FanApp(imageUrl: "http://image.baidu.com/search/detail?ct=503316480&z=0&ipn=d&word=%E8%96%9B%E4%B9%8B%E8%B0%A6%E8%AE%A4%E7%9C%9F%E7%9A%84%E9%9B%AA&step_word=&hs=0&pn=1&spn=0&di=178803476500&pi=0&rn=1&tn=baiduimagedetail&is=0%2C0&istype=2&ie=utf-8&oe=utf-8&in=&cl=2&lm=-1&st=-1&cs=2997856238%2C3987988756&os=3384178711%2C964360152&simid=4234909737%2C635499239&adpicid=0&ln=1972&fr=&fmq=1482841390454_R&fm=result&ic=0&s=undefined&se=&sme=&tab=0&width=&height=&face=undefined&ist=&jit=&cg=&bdtype=0&oriquery=&objurl=http%3A%2F%2F77music2.oss-cn-hangzhou.aliyuncs.com%2Fdata%2Fattachment%2Fforum%2F201403%2F25%2F171302rnvv5zcl9o4yle1w.jpg&fromurl=ippr_z2C%24qAzdH3FAzdH3Fooo_z%26e3B0047ftv_z%26e3Bv54AzdH3Fu5674_z%26e3Brir%3F451%3Detjopi6jw1%26pt1%3D8ldm9&gsm=0&rpstart=0&rpnum=0", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/vg_nvEGryA4\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Snow")
        let p4 = FanApp(imageUrl: "http://www.billboard.com/files/styles/article_main_image/public/media/lmfao-party-rock-anthem-2011-billboard-650.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gZIqW92GaTQ\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "At the Right Moment")
        let p5 = FanApp(imageUrl: "http://image.baidu.com/search/detail?ct=503316480&z=0&ipn=d&word=%E8%96%9B%E4%B9%8B%E8%B0%A6%E5%B0%8F%E5%AD%A9&step_word=&hs=0&pn=0&spn=0&di=147080405780&pi=0&rn=1&tn=baiduimagedetail&is=0%2C0&istype=2&ie=utf-8&oe=utf-8&in=&cl=2&lm=-1&st=-1&cs=2734877311%2C2073893153&os=682140954%2C3370925026&simid=4266830961%2C660409120&adpicid=0&ln=1971&fr=&fmq=1482841292994_R&fm=result&ic=0&s=undefined&se=&sme=&tab=0&width=&height=&face=undefined&ist=&jit=&cg=&bdtype=0&oriquery=&objurl=http%3A%2F%2Fimg3.cache.netease.com%2Fent%2F2015%2F10%2F8%2F2015100817252144d7d_550.jpg&fromurl=ippr_z2C%24qAzdH3FAzdH3Fooo_z%26e3B77cm_z%26e3Bv54AzdH3FgjofAzdH3Ffi5oAzdH3Fjgp-8c-8aab-80-BcEaSFGbaaan8HaO_z%26e3Bip4s&gsm=0&rpstart=0&rpnum=0", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tWyuglGCKgE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Children")
        
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
    

}

