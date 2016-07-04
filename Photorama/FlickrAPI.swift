//
//  FlickrAPI.swift
//  Photorama
//
//  Created by Dan Patey on 7/3/16.
//  Copyright © 2016 Dan Patey. All rights reserved.
//

import Foundation

enum Method: String {
    case RecentPhotos = "flickr.photos.getRecent"
}

struct FlickrAPI {
    
    private static let baseURLString = "https://api.flickr.com/services/rest"
    
    private static func flickrURL(method method: Method, parameters: [String:String]?) -> NSURL {
        
        let components = NSURLComponents(string: baseURLString)!
        var queryItems = [NSURLQueryItem]()
        
        if let additionalParams = parameters {
            for (key, value) in additionalParams {
                let item = NSURLQueryItem(name: key, value: value)
                queryItems.append(item)
            }
        }
        
        components.queryItems = queryItems
        return components.URL!
    }
    
    static func recentPhotosURL() -> NSURL {
        return flickrURL(method: .RecentPhotos, parameters: ["extras": "url_h,date_taken"])
    }
}