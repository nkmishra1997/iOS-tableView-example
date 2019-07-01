//
//  TableViewCell.swift
//  ios-test-app
//
//  Created by Nikhil-Mishra on 26/06/19.
//  Copyright © 2019 Nikhil-Mishra. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    let leftImageView = UIImageView()
    let titleLabel = UILabel()
    let subTitle = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        createViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func createViews() {
        contentView.addSubview(leftImageView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(subTitle)
        
//        leftImageView.layer.cornerRadius = 20
//        leftImageView.layer.borderColor = UIColor.yellow.cgColor
//        leftImageView.layer.borderWidth = 1.2
        leftImageView.set(.leading(contentView, 12),
                          .top(contentView, 12),
                          .width(40),
                          .height(40),
                          .bottom(contentView, 12))
        
        titleLabel.set(.top(leftImageView),
                       .after(leftImageView, 12),
                       .trailing(contentView, 12))
        
        subTitle.set(.below(titleLabel, 2),
                       .after(leftImageView, 12),
                       .trailing(contentView, 12))
        
        titleLabel.text = "Title"
        subTitle.text = "SubTitle"
    }
    
    public func setData(titleText: String, subTitleText: String, image: UIImage) {
        titleLabel.text = titleText
        subTitle.text = subTitleText
        leftImageView.image = image
    }

}
