//
//  PartyRock.swift
//  PartyRock
//
//  Created by Zack Falgout on 5/26/17.
//  Copyright © 2017 Zack Falgout. All rights reserved.
//

import Foundation

class PartyRock {
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    
    var imageURL: String {
        return _imageURL
    }
    
    var videoURL: String {
        return _videoURL
    }
    
    var videoTitle: String {
        return _videoTitle
    }
    
    init(imageURL: String, videoURL: String, videoTitle: String){
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
    }
}
