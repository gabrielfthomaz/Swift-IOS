//
//  ListaTableViewCell.swift
//  ListaComBusca
//
//  Created by Student on 05/08/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class ListaTableViewCell: UITableViewCell {
    
    @IBOutlet weak var listaTotal: UILabel!
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
