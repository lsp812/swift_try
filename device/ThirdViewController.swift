//
//  ThirdViewController.swift
//  device
//
//  Created by 大麦 on 16/3/11.
//  Copyright © 2016年 lsp. All rights reserved.
//

import Foundation
import UIKit
class ThirdViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    var imageArray:NSArray = [UIImage(named:"MainPage_onClick2")!,UIImage(named:"My_onClick2")!,UIImage(named:"NearBy_onClick2")!,UIImage(named:"NearBy_onClick")!,UIImage(named:"Find_onClick")!,UIImage(named:"mine_icon_record")!,UIImage(named:"mine_icon_focus")!];
    var titleArray:[String] = ["朋友圈","扫一扫","摇一摇","附近的人","漂流瓶","购物","游戏"]
    let leftSide:CGFloat = 15
    let spacing:CGFloat = 10
    let sideLength:CGFloat = 30
    let view_height:CGFloat = 44
    let colorBackground = UIColor(colorLiteralRed: 223.0/256.0, green: 223.0/256.0, blue: 223.0/256.0, alpha: 1.0)
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        self.view.backgroundColor = colorBackground
        self.createAllView()
    }
    
    func createAllView(){
       
        var bottom:CGFloat = 64+10;
        for var i=0; i < titleArray.count; i++ {
            let rect = CGRectMake(0, bottom, self.view.frame.size.width, view_height)
            let image = imageArray[i]
            let title = titleArray[i]
            createViewWithFrame(rect, image: image as! UIImage, title: title,tag: i)
            bottom+=view_height
            if(i==0||i==2||i==4)
            {
                bottom+=20
            }
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
        if(tag==1||tag==3||tag==5)
        {
            let lineView = UIView()
            lineView.frame = CGRectMake(leftSide, view_height-1, viewTemp.frame.size.width-2*leftSide, 1)
            lineView.backgroundColor = colorBackground
            viewTemp.addSubview(lineView)
        }
    }
}