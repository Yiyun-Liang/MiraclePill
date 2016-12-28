//
//  VideoVC.swift
//  FanApp
//
//  Created by Yiyun Liang on 2016-12-27.
//  Copyright © 2016 Yiyun Liang. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    // there is another way of using web view, all programmatically
    
    @IBOutlet weak var titleLbl: UILabel!
    
    private var _fanApp: FanApp!
    
    // is called before viewDidLoad()
    var fanApp: FanApp {
        get {
            return _fanApp
        } set {
            _fanApp = newValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        titleLbl.text = fanApp.videoTitle
        webView.loadHTMLString(fanApp.videoUrl, baseURL: nil)  // fanApp.videoUrl is an iframe
    }
    
}
