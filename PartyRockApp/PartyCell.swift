//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by Development on 10/19/16.
//  Copyright © 2016 Development. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
        //TODO: Set image from URL
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
