//
//  MineCell.swift
//  LoveFreshBeen
//
//  Created by sfbest on 15/11/19.
//  Copyright © 2015年 tianzhongtao. All rights reserved.
//

import UIKit

class MineCell: UITableViewCell {

    static private let identifier = "CellID"
    
    class func cellFor(tableView: UITableView) -> MineCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier(identifier) as? MineCell
        
        if cell == nil {
            cell = MineCell(style: .Default, reuseIdentifier: identifier)
        }

        return cell!
    }

    let bottomLine = UIView()
    private lazy var iconImageView = UIImageView()
    private lazy var titleLabel = UILabel()
    private lazy var arrowView = UIImageView()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(iconImageView)
        titleLabel.textColor = UIColor.blackColor()
        titleLabel.font = UIFont.systemFontOfSize(16)
        titleLabel.alpha = 0.8
        titleLabel.text = "我的炖豆腐爱的疯狂"
        contentView.addSubview(titleLabel)
        
        bottomLine.backgroundColor = UIColor.grayColor()
        bottomLine.alpha = 0.15
        contentView.addSubview(bottomLine)
        
        arrowView.image = UIImage(named: "icon_go")
        contentView.addSubview(arrowView)

        selectionStyle = UITableViewCellSelectionStyle.None
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        arrowView.frame = CGRectMake(width - 20, (height - (arrowView.image?.size.height)!) * 0.5, (arrowView.image?.size.width)!, (arrowView.image?.size.height)!)
        iconImageView.frame = CGRectMake(10, 0, height, height)
        titleLabel.frame = CGRectMake(CGRectGetMaxX(iconImageView.frame), 0, 200, height)
        
        let leftMarge: CGFloat = 20
        bottomLine.frame = CGRectMake(leftMarge, height - 0.5, width - leftMarge, 0.5)
    }
    
}
