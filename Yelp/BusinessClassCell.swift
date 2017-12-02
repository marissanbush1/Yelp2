//
//  BusinessClassCell.swift
//  Yelp
//
//  Created by Marissa Bush on 12/1/17.
//  Copyright © 2017 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessClassCell: UITableViewCell {
    @IBOutlet weak var ratingImage: UIImageView!
    
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var reviewsCountLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var thumbImage: UIImageView!
    
    var business: Business! {
        didSet {
            nameLabel.text = business.name
            thumbImage.setImageWith(business.imageURL!)
            categoryLabel.text = business.categories
            addressLabel.text = business.address
            reviewsCountLabel.text = "\(business.reviewCount!) Reviews"
            ratingImage.setImageWith(business.ratingImageURL!)
            distanceLabel.text = business.distance
            
            
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        thumbImage.layer.cornerRadius = 3
        thumbImage.clipsToBounds = true
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
        // Initialization code
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width

    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
