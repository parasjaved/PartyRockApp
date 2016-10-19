//
//  PartyRock.swift
//  PartyRockApp
//
//  Created by Development on 10/19/16.
//  Copyright © 2016 Development. All rights reserved.
//

import Foundation

class PartyRock {
    private var _imageURL: String!
    private var _VideoURL: String!
    private var _videoTitle: String!
    
    var imageURL: String {
        return _imageURL
    }
    
    var videoURL: String {
        return _VideoURL
    }
    
    var videoTitle: String {
        return _videoTitle
    }
    
    init(imageURL: String, videoURL: String, videoTitle: String) {
        _imageURL = imageURL
        _VideoURL = videoURL
        _videoTitle = videoTitle
    }
}
