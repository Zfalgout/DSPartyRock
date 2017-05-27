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
        
        let url = URL(string: partyRock.imageURL)!
        //Start on a background thread.
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                
                DispatchQueue.global().sync {
                    //Update the UI on the main thread.
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch {
                //Handle the error
            }
        }
    }
}
