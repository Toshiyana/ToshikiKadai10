//
//  PrefectureCell.swift
//  10
//
//  Created by Toshiyana on 2021/12/06.
//

import UIKit

class PrefectureCell: UITableViewCell {
    static let identifier = "PrefectureCell"

    static func nib() -> UINib {
        return UINib(nibName: "PrefectureCell", bundle: nil)
    }

    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var numberLabel: UILabel!

    func configure(name: String, index: Int) {
        nameLabel.text = name
        numberLabel.text = "\(index + 1)番目の都道府県です"

        let colors: [UIColor] = [.systemRed, .systemGreen, .systemBlue]

        contentView.backgroundColor = colors[index % colors.count]
    }
}
