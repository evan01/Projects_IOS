//
//  RestaurantCell.swift
//  FavRestaurants
//
//  Created by Evan Knox on 2016-01-07.
//  Copyright © 2016 NaliApplications. All rights reserved.
//

import UIKit

class RestaurantCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var placeLabel: UILabel!
    @IBOutlet var typeLabel: UILabel!
    @IBOutlet var backImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
