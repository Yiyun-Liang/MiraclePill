//
//  FanApp.swift
//  FanApp
//
//  Created by Yiyun Liang on 2016-12-27.
//  Copyright © 2016 Yiyun Liang. All rights reserved.
//

import Foundation

class FanApp {
    private var _imageUrl: String!
    private var _videoUrl: String!
    private var _videoTitle: String!
    
    // getters
    var imageUrl: String {
        return _imageUrl
    }
    
    var videoUrl: String {
        return _videoUrl
    }
    
    var videoTitle: String {
        return _videoTitle
    }
    
    // constructor
    init(imageUrl: String, videoUrl: String, videoTitle: String){
        _imageUrl = imageUrl
        _videoUrl = videoUrl
        _videoTitle = videoTitle
    }
}
