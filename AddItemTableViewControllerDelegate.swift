//
//  File.swift
//  Bucket List
//
//  Created by Nishant Patel on 3/15/17.
//  Copyright © 2017 Nishant Patel. All rights reserved.
//

import Foundation

protocol AddItemTableViewControllerDelegate: class {
    func itemSave(by controller: AddItemTableViewController, with d: String, at indexPath: NSIndexPath?)
    
    func cancelButtonPressed(by controller: AddItemTableViewController)
}
