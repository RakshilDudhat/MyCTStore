//
//  OrderCollectionViewCell.swift
//  MyCTStore
//
//  Created by Rakshil Dudhat on 10/04/23.
//

import UIKit

class OrderCollectionViewCell: UICollectionViewCell {

    // MARK: - IBOutlet
    @IBOutlet weak var orderView: UIView!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var dateAndTimeLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var storeNameLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var reOrderButton: UIButton!
    @IBOutlet weak var cancelOrderButton: UIButton!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        statusLabel.setCorner(radius: 6)
        statusLabel.textColor = .white
        dateAndTimeLabel.textColor = .lightGray
    }
    
    // MARK: - Conformetion color
    func setColor(view: UIView) {
        switch statusLabel.text {
        case "Confirmed":
            view.backgroundColor = .systemGreen
        case "Pending":
            view.backgroundColor = .systemOrange
        case "Dispatched":
            view.backgroundColor = .systemRed
        case "cancelled":
            view.backgroundColor = .systemRed
        case "Delivered":
            view.backgroundColor = .systemCyan
        default:
            view.backgroundColor = .white
        }
    }
}
