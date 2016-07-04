//
//  Photo+CoreDataProperties.swift
//  Photorama
//
//  Created by Dan Patey on 7/4/16.
//  Copyright © 2016 Dan Patey. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Photo {

    @NSManaged var photoID: String
    @NSManaged var dateTaken: NSDate
    @NSManaged var title: String
    @NSManaged var photoKey: String
    @NSManaged var remoteURL: NSURL

}