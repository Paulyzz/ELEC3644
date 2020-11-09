//
//  A2_RouteTableViewCell.swift
//  Hiking
//
//  Created by Will Lam on 9/11/2020.
//

import UIKit

class A2_RouteTableViewCell: UITableViewCell {

    @IBOutlet weak var routeImageView: UIImageView!
    @IBOutlet weak var routeName_label: UILabel!
    @IBOutlet weak var routeDistance_label: UILabel!
    @IBOutlet weak var routeExpectedTime_label: UILabel!
    @IBOutlet weak var routePeak_label: UILabel!
    @IBOutlet weak var routeDifficulty_label: UILabel!
    @IBOutlet weak var bookmarkedButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func pressedBookmarkedButton(_ sender: UIButton) {
    }
    
}
