//
//  ClientTableViewCell.swift
//  PositiveCulture
//
//  Created by kemshiro on 4/18/18.
//  Copyright © 2018 kemshiro. All rights reserved.
//

import UIKit

class ClientTableViewCell: UITableViewCell {

    @IBOutlet weak var clientImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var propertyLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
