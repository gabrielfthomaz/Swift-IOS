//
//  MusicaTableViewCell.swift
//  DesafioBronze
//
//  Created by Student on 08/08/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class MusicaTableViewCell: UITableViewCell {

    
    @IBOutlet weak var NomeArtistaLabel: UILabel!
    
    @IBOutlet weak var NomeMusicaLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
