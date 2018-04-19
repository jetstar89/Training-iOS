//
//  ItemPropertiesViewCell.swift
//  PositiveCulture
//
//  Created by kemshiro on 4/17/18.
//  Copyright © 2018 kemshiro. All rights reserved.
//

import UIKit

class ItemPropertiesViewCell: UITableViewCell {

    
    @IBOutlet weak var itemImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var addressLabel: UILabel!
    
    @IBOutlet weak var agentLabel: UILabel!
    
    @IBOutlet weak var costLabel: UILabel!
    
    @IBOutlet weak var squareLabel: UILabel!
    
    @IBOutlet weak var statusLabel: UILabel!
    
    var property: Property! {
        didSet {
            itemImageView.image = UIImage(named: property.image)
            titleLabel.text = property.title
            addressLabel.text = property.address
            costLabel.text = String(format:"S$ %.f", property.cost)
            agentLabel.text = property.agent
            squareLabel.text = property.square
            statusLabel.text = property.status
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
}
