//
//  PartyCell.swift
//  FanApp
//
//  Created by Yiyun Liang on 2016-12-27.
//  Copyright © 2016 Yiyun Liang. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitleLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI(fanApp: FanApp) {
        // simply grab the string from the FanApp object
        videoTitleLbl.text = fanApp.videoTitle
        
        // set image from url
        // IMPORTANT! when downloading things from the internet, put it on an asynchronous thread!
        let url = URL(string: fanApp.imageUrl)! // unwrap it
        // background thread
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                // main thread where the UI can be updated
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch {
                // handle the error
            }
        }
    }

}
