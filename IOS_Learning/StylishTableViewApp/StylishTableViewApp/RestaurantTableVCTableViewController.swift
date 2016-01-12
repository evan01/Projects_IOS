//
//  RestaurantTableVCTableViewController.swift
//  StylishTableViewApp
//
//  Created by Evan Knox on 2016-01-06.
//  Copyright © 2016 NaliApplications. All rights reserved.
//

import UIKit

class RestaurantTableVCTableViewController: UITableViewController {

    var restaurantNames = ["Cafe Deadend","Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats","Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina","Donostia", "Royal Oak", "Thai Cafe", "Restaurant"]
    
    var imageNames = ["barrafina","bourkestreetbakery","cafedeadend","cafeloisl","cafelore","confessional","donostia","fiveleaves","forkeerestaurant","grahamavenuemeats","haighschocolate","homei","palominoespresso","petiteoyster","posatelier","restaurant","royaloak","teakha","thaicafe","traif","upstate","wafflewolf"]
    
    var restaurantLocations = ["Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong","Hong Kong", "Hong Kong", "Hong Kong", "Sydney", "Sydney", "Sydney", "New165 York", "New York", "New York", "New York", "New York", "New York", "New York","London", "London", "London","London"]
    
    var restaurantTypes = ["Coffee & Tea Shop", "Cafe", "Tea House", "Austrian /Causual Drink", "French", "Bakery", "Bakery", "Chocolate", "Cafe", "American /Seafood", "American", "American", "Breakfast & Brunch", "Coffee & Tea", "Coffee& Tea", "Latin American", "Spanish", "Spanish", "Spanish", "British", "Thai"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            let cellIdentifier = "Cell"
            let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier,forIndexPath: indexPath) as! RestaurantTableViewCell
            
            //Configure the cell
            cell.nameLabel.text = restaurantNames[indexPath.row]
            cell.thumbnailImageView.image = UIImage(named: imageNames[indexPath.row])
            cell.typeLabel.text = restaurantTypes[indexPath.row]
            cell.locationLabel.text = restaurantLocations[indexPath.row]
        
            return cell
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }

}
