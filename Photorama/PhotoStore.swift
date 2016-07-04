//
//  PhotoStore.swift
//  Photorama
//
//  Created by Dan Patey on 7/3/16.
//  Copyright © 2016 Dan Patey. All rights reserved.
//

import Foundation

class PhotoStore {
    
    let session: NSURLSession = {
        let config = NSURLSessionConfiguration.defaultSessionConfiguration()
        return NSURLSession(configuration: config)
    }()
    
    func fetchRecentPhotos(completion completion: (PhotosResult) -> Void) {
        let url = FlickrAPI.recentPhotosURL()
        let request = NSURLRequest(URL: url)
        let task = session.dataTaskWithRequest(request) {
            (data, response, error) -> Void in
            
            let result = self.processRecentPhotoRequest(data: data, error: error)
            completion(result)
        }
        task.resume()
    }
    
    func processRecentPhotoRequest(data data: NSData?, error: NSError?) -> PhotosResult {
        guard let jsonData = data else {
            return .Failure(error!)
        }
        
        return FlickrAPI.photosFromJSONData(jsonData)
    }
}