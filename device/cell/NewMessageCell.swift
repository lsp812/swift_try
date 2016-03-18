//
//  NewMessageCell.swift
//  device
//
//  Created by 大麦 on 16/3/17.
//  Copyright © 2016年 lsp. All rights reserved.
//

import UIKit

class NewMessageCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
       
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
     var newImageV:UIImageView!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        newImageV.frame = CGRectMake(150, 10, 34, 34)
        self.contentView.addSubview(newImageV)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func fillData(image:UIImage){
        newImageV.image = image
    }
}
