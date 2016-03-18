//
//  ForthViewController.swift
//  device
//
//  Created by 大麦 on 16/3/11.
//  Copyright © 2016年 lsp. All rights reserved.
//

import Foundation
import UIKit
class ForthViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var imageArray:NSArray = [UIImage(named:"Find_onClick")!,UIImage(named:"Find_onClick")!,UIImage(named:"Find_onClick")!,UIImage(named:"Find_onClick")!,UIImage(named:"Find_onClick")!,UIImage(named:"Find_onClick")!];
    var titleArray:[String] = ["相册","收藏","钱包","优惠券","表情","设置"]
    let leftSide:CGFloat = 15
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.greenColor()
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        self.createAllview()
        
    }
    
    func createHeaderView(){
        
        let headView = UIView()
        headView.frame = CGRectMake(0, 64, self.view.frame.size.width, 100)
        self.view .addSubview(headView)
        //
        let imageV = UIImageView(frame: CGRectMake(leftSide, 10, 80, 80))
        imageV.image = UIImage(named: "btn_backImage")
        self.view .addSubview(imageV)
        //
        let upLabel = UILabel()
//        upLabel.frame = CGRectMake(110, <#T##y: CGFloat##CGFloat#>, <#T##width: CGFloat##CGFloat#>, <#T##height: CGFloat##CGFloat#>)
    }
    
    
    func createAllview(){
        
        let tableV:UITableView = UITableView()
        tableV.frame = CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height-64)
        tableV.delegate = self
        tableV.separatorStyle = UITableViewCellSeparatorStyle.None
        tableV.dataSource = self
        self.view.addSubview(tableV)
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return titleArray.count
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "11")
        let title = titleArray[indexPath.section]
        cell.textLabel?.text = title
        cell.imageView?.image = imageArray[indexPath.section] as? UIImage
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        return cell
    }
}