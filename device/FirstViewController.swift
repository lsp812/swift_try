//
//  FirstViewController.swift
//  device
//
//  Created by 大麦 on 16/3/11.
//  Copyright © 2016年 lsp. All rights reserved.
//

import Foundation
import UIKit



class FirstViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        self.createNavigationItem()
        self.createTableView()
        self.addSVRefresh()
    }
    func createNavigationItem(){
        let rightButton1 = UIBarButtonItem(image: UIImage(named: "NearBy_unClick2"), style: UIBarButtonItemStyle.Plain, target: self, action: nil)
        let rightButton2 = UIBarButtonItem(image: UIImage(named: "NearBy_unClick2"), style: UIBarButtonItemStyle.Plain, target: self, action: nil)
        let buttonArray = [rightButton1,rightButton2]
//        let items = UINavigationItem()
//        items.rightBarButtonItems = buttonArray
        //
        let leftButton1 = UIBarButtonItem(title: "微信", style: UIBarButtonItemStyle.Plain, target: self, action: nil)
//        items.leftBarButtonItem = leftButton1
        //
        self.navigationItem.rightBarButtonItems = buttonArray;
        self.navigationItem.leftBarButtonItem = leftButton1;
    }
    
    var listArray = [["image":"MainPage_onClick2","title":"杨定甲","subTitle":"弄啥哩？还不来","time":"08:56"],["image":"My_onClick2","title":"刘尧","subTitle":"我到了","time":"昨天"],["image":"MainPage_onClick2","title":"杨定甲","subTitle":"弄啥哩？还不来","time":"08:56"],["image":"My_onClick2","title":"刘尧","subTitle":"我到了","time":"昨天"],["image":"MainPage_onClick2","title":"杨定甲","subTitle":"弄啥哩？还不来","time":"08:56"],["image":"My_onClick2","title":"刘尧","subTitle":"我到了","time":"昨天"],["image":"MainPage_onClick2","title":"杨定甲","subTitle":"弄啥哩？还不来","time":"08:56"],["image":"My_onClick2","title":"刘尧","subTitle":"我到了","time":"昨天"],["image":"MainPage_onClick2","title":"杨定甲","subTitle":"弄啥哩？还不来","time":"08:56"],["image":"My_onClick2","title":"刘尧","subTitle":"我到了","time":"昨天"],["image":"MainPage_onClick2","title":"杨定甲","subTitle":"弄啥哩？还不来","time":"08:56"],["image":"My_onClick2","title":"刘尧","subTitle":"我到了","time":"昨天"],["image":"MainPage_onClick2","title":"杨定甲","subTitle":"弄啥哩？还不来","time":"08:56"],["image":"My_onClick2","title":"刘尧","subTitle":"我到了","time":"昨天"],["image":"MainPage_onClick2","title":"杨定甲","subTitle":"弄啥哩？还不来","time":"08:56"],["image":"My_onClick2","title":"刘尧","subTitle":"我到了","time":"昨天"]]
    let tabelV:UITableView = UITableView()
    func createTableView(){
        tabelV.frame = CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height-64-49)
        tabelV.delegate = self
        tabelV.dataSource = self
        tabelV.registerNib(UINib(nibName:"MessageCell", bundle: nil), forCellReuseIdentifier: "MessageCellIdentifier")
//        tabelV.registerClass(NewMessageCell.self, forCellReuseIdentifier: "NewMessageCellIdentifier")
//        tabelV.registerNib(nibName:"NewMessageCell", forCellReuseIdentifier: "NewMessageCellIdentifier")
        self.view .addSubview(tabelV)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listArray.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let temp:NSDictionary = listArray[indexPath.row]
        let title = temp.valueForKey("title") as? String
        let subtitle = temp.valueForKey("subTitle") as? String
        let imageName = temp.valueForKey("image") as! String
        let image = UIImage(named: imageName)
        let time = temp.valueForKey("time") as! String
        //
//        var cell = NewMessageCell.init(style: UITableViewCellStyle.Default, reuseIdentifier: "NewMessageCell")
//        let cell = tableView.dequeueReusableCellWithIdentifier("NewMessageCellIdentifier") as! NewMessageCell
//        cell.fillData(image!)
//        return cell
        
        let cell = tableView.dequeueReusableCellWithIdentifier("MessageCellIdentifier") as! MessageCell
        cell.headImageV.image = image
        cell.titleLabel.text = title
        cell.subtitle.text = subtitle
        cell.timeLabel.text = time
        return cell
//        if(indexPath.row>=1)
//        {
//            let cell = tableView.dequeueReusableCellWithIdentifier("class") as! NewMessageCell
//            cell.newImageV.image = image
//            return cell
//        }
//        else
//        {
//            let cell = tableView.dequeueReusableCellWithIdentifier("MessageCellIdentifier") as! MessageCell
//            cell.headImageV.image = image
//            cell.titleLabel.text = title
//            cell.subtitle.text = subtitle
//            cell.timeLabel.text = time
//            return cell
//        }
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 54
    }
    
    func addSVRefresh(){
        
        tabelV.addPullToRefreshWithActionHandler({ () -> Void in
            print("上")
            self.upAction()
            }, arrowView:UIImageView(image: UIImage(named:"icon_refresh_arrow_down")));
        tabelV.addInfiniteScrollingWithActionHandler { () -> Void in
            print("下")
            self.downAction()
        }
    }
    func upAction(){
        
        tabelV.pullToRefreshView.stopAnimating()
        tabelV.infiniteScrollingView.stopAnimating()
    }
    func downAction(){
        
        tabelV.pullToRefreshView.stopAnimating()
        tabelV.infiniteScrollingView.stopAnimating()
    }
}


