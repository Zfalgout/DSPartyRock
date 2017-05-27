//
//  PartyCell.swift
//  PartyRock
//
//  Created by Zack Falgout on 5/26/17.
//  Copyright © 2017 Zack Falgout. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {
    
    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initializßation code
    }

    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
        //TODO: set image from url
    }
}
