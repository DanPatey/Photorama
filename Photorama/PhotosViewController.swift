//
//  PhotosViewController.swift
//  Photorama
//
//  Created by Dan Patey on 7/3/16.
//  Copyright © 2016 Dan Patey. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    var store: PhotoStore!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        store.fetchRecentPhotos()
    }
}