//
//  BestSellersTableViewCell.swift
//  SkyLodjinha
//
//  Created by TI Corporativa on 23/05/19.
//  Copyright © 2019 TI Corporativa. All rights reserved.
//

import UIKit

class BestSellersTableViewCell: UITableViewCell {

    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var oldPriceLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    static let cellIdentifier = "\(BestSellersTableViewCell.self)"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
