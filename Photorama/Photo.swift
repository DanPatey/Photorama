//
//  Photo.swift
//  Photorama
//
//  Created by Dan Patey on 7/4/16.
//  Copyright © 2016 Dan Patey. All rights reserved.
//

import UIKit
import CoreData


class Photo: NSManagedObject {

    var image: UIImage?
    
    override func awakeFromInsert() {
        super.awakeFromInsert()
        
        // Give the properties their initial values
        title = ""
        photoID = ""
        remoteURL = NSURL()
        photoKey = NSUUID().UUIDString
        dateTaken = NSDate()
    }
}