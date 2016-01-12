//
//  ViewController.swift
//  TableViewApp
//
//  Created by Evan Knox on 2016-01-04.
//  Copyright © 2016 NaliApplications. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {

    var restaurantNames = ["Cafe Deadend","Confessional","Barrmania","Fav place", "SecondFavPlace","Royal Oak","Cafe Deadend","Confessional","Barrmania","Fav place", "SecondFavPlace","Royal Oak","Cafe Deadend","Confessional","Barrmania","Fav place", "SecondFavPlace","Royal Oak","Cafe Deadend","Confessional","Barrmania","Fav place"]
    
    var imageNames = ["barrafina","bourkestreetbakery","cafedeadend","cafeloisl","cafelore","confessional","donostia","fiveleaves","forkeerestaurant","grahamavenuemeats","haighschocolate","homei","palominoespresso","petiteoyster","posatelier","restaurant","royaloak","teakha","thaicafe","traif","upstate","wafflewolf"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    //Nescessary table view protocol methods
    
    //Informs the table view the total number of rows in a section
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return restaurantNames.count
    }
    
    //Called everytime a table row is displayed
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath)->UITableViewCell{
        //We want to reuse the same cell?
        let cellIdentifier = "Cell" //Define the string variable
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) //call the dequeueReusuableCell method on the tableview object
        //In fact not just any cell, a specific cell with an identifier 
        //Also some index path identifier, must b
        cell.textLabel?.text = restaurantNames[indexPath.row]
        cell.imageView?.image = UIImage(named: imageNames[indexPath.row])
        
        return cell
    }

}

