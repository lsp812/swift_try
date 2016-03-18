//
//  SecondViewController.swift
//  device
//
//  Created by 大麦 on 16/3/11.
//  Copyright © 2016年 lsp. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        self.view.backgroundColor = colorBackground
        self.createView()
    }
    let nameArray = ["杨定甲","刘尧","王思聪","杨家将"]
    
//    self.indexArray = [ChineseString IndexArray:nameArray];
//    self.letterResultArr = [ChineseString LetterSortArray:nameArray];
    
//    let indexArray = [ChineseString IndexArray:nameArray];
//    let letterResultArr = [ChineseString LetterSortArray:nameArray];
    
    let view_height:CGFloat = 44
    let leftSide:CGFloat = 15
    let sideLength:CGFloat = 30
    let colorBackground = UIColor(colorLiteralRed: 223.0/256.0, green: 223.0/256.0, blue: 223.0/256.0, alpha: 1.0)
    let headViewList = [["image":"MainPage_onClick2","title":"新的朋友"],["image":"My_onClick2","title":"群聊"],["image":"NearBy_onClick2","title":"标签"],["image":"My_onClick2","title":"公众号"]];
//    self.indexArray = [ChineseString IndexArray:nameArray];
//    self.letterResultArr = [ChineseString LetterSortArray:nameArray];
    
//    let indexArray:NSMutableArray = [ChineseString IndexArray:headViewList]
//    let letterResultArr:NSMutableArray ＝ [ChineseString LetterSortArray:headViewList]
//    let indexArray:NSMutableArray = ChineseString.indexArray(headViewList)
    func createView(){
        self.createHeaderView()
        self.createDownView()
    }
    
    func createHeaderView(){
        var bottom:CGFloat = 64;
        for var i=0; i < headViewList.count; i++ {
            let rect = CGRectMake(0, bottom, self.view.frame.size.width, view_height)
            let temp:NSDictionary = headViewList[i]
            let imageName = temp.valueForKey("image") as! String
            let title = temp.valueForKey("title") as! String
            createViewWithFrame(rect, image:UIImage(named: imageName)!, title: title,tag: i)
            bottom+=view_height
            print(temp)
        }
    }
    func createViewWithFrame(rect:CGRect,image:UIImage,title:String,tag:Int){
        let viewTemp = UIView()
        viewTemp.frame = rect
        viewTemp.backgroundColor = UIColor.whiteColor()
        self.view .addSubview(viewTemp)
        //
        let imageV = UIImageView()
        imageV.frame = CGRectMake(leftSide, (view_height-sideLength)/2.0, sideLength, sideLength)
        imageV.image = image
        viewTemp .addSubview(imageV)
        //
        let labelTitle = UILabel()
        labelTitle.frame = CGRectMake(leftSide*2+sideLength, (view_height-20)/2.0, 200, 20)
        labelTitle.text = title
        labelTitle.textAlignment = NSTextAlignment.Left
        viewTemp .addSubview(labelTitle)
        //
        if(tag<headViewList.count-1)
        {
            let lineView = UIView()
            lineView.frame = CGRectMake(leftSide, view_height-1, viewTemp.frame.size.width-2*leftSide, 1)
            lineView.backgroundColor = colorBackground
            viewTemp.addSubview(lineView)
        }
    }
    func createDownView(){
        let tableV = UITableView()
        tableV.frame = CGRectMake(0, 240+20, self.view.frame.size.width, self.view.frame.size.height-289-20)
        tableV.delegate = self
        tableV.dataSource = self
        self.view.addSubview(tableV)
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.nameArray.count
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 44
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = UITableViewCell()
        let title = self.nameArray[indexPath.row]
        cell.textLabel?.text = title
        cell.imageView?.image = UIImage(named:"mine_icon_record")
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let index = indexPath.row
        if(index==0)
        {
            let set = SettingViewController()
            self.navigationController?.pushViewController(set, animated: true)
        }
        else
        {
            let set = SettingViewController()
            self.presentViewController(set, animated: true, completion: nil)
        }

    }
    
    
}