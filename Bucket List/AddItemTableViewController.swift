//
//  AddItemTableViewController.swift
//  Bucket List
//
//  Created by Nishant Patel on 3/15/17.
//  Copyright © 2017 Nishant Patel. All rights reserved.
//

import UIKit

class AddItemTableViewController: UITableViewController {

    weak var delegate: AddItemTableViewControllerDelegate?
    @IBOutlet weak var itemTextField2: UITextField!
    @IBOutlet weak var itemTextField: UITextField!
    
    var item: String?
    var indexPath: NSIndexPath?
    
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        print("Cancel")
        delegate?.cancelButtonPressed(by: self)
    }
    
    @IBAction func saveButtonPressed(_ sender: UIBarButtonItem) {
        print("save")
        let text = itemTextField.text!
        delegate?.itemSave(by: self, with: text, at: indexPath)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        itemTextField.text = item
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }

}
