//
//  RootTabBarController.swift
//  device
//
//  Created by 大麦 on 16/3/14.
//  Copyright © 2016年 lsp. All rights reserved.
//

import Foundation
import UIKit

class RootTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.createSubViewControllers()
    }
    
    func createSubViewControllers(){
        let firstVC = FirstViewController()
        let nav1 = UINavigationController(rootViewController: firstVC)
        let item1:UITabBarItem = UITabBarItem(title: "微信", image: UIImage(named: "MainPage_unClick2"), selectedImage: UIImage(named:"MainPage_onClick2"))
        firstVC.tabBarItem = item1
        
        
        let secondVC = SecondViewController()
        let nav2 = UINavigationController(rootViewController: secondVC)
        let item2:UITabBarItem = UITabBarItem(title: "通讯录", image: UIImage(named: "My_unClick2"), selectedImage: UIImage(named:"My_onClick2"))
        secondVC.tabBarItem = item2
        
        let thirdVC = ThirdViewController()
        let nav3 = UINavigationController(rootViewController: thirdVC)
        let item3:UITabBarItem = UITabBarItem(title: "发现", image: UIImage(named: "NearBy_unClick2"), selectedImage: UIImage(named:"NearBy_onClick2"))
        thirdVC.tabBarItem = item3
        
//        let fourVC = ForthViewController()
//        let nav4 = UINavigationController(rootViewController: fourVC)
//        let item4:UITabBarItem = UITabBarItem(title: "我", image: UIImage(named: "Find_unClick2"), selectedImage: UIImage(named:"Find_onClick2"))
//        fourVC.tabBarItem = item4
        let fourVC = FourthViewController(nibName:"FourthViewController", bundle:nil)
        let nav4 = UINavigationController(rootViewController: fourVC)
        let item4:UITabBarItem = UITabBarItem(title: "我", image: UIImage(named: "Find_unClick2"), selectedImage: UIImage(named:"Find_onClick2"))
        fourVC.tabBarItem = item4
        
        
        let tabArray = [nav1,nav2,nav3,nav4]
        self.viewControllers = tabArray
        self.tabBar.tintColor = UIColor.greenColor()
        
    }
    
    func createNavigationItem()->UINavigationItem{
        let rightButton1 = UIBarButtonItem(image: UIImage(named: "NearBy_unClick2"), style: UIBarButtonItemStyle.Plain, target: self, action: Selector("clickAction1"))
        let rightButton2 = UIBarButtonItem(image: UIImage(named: "NearBy_unClick2"), style: UIBarButtonItemStyle.Plain, target: self, action: Selector("clickAction2"))
        let buttonArray = [rightButton1,rightButton2]
        let items = UINavigationItem()
        items.rightBarButtonItems = buttonArray
        //
        let leftButton1 = UIBarButtonItem(title: "微信", style: UIBarButtonItemStyle.Plain, target: self, action: nil)
        items.leftBarButtonItem = leftButton1
        //
        return items
    }
    
    func clickAction1(){
        print("clickAction1")
    }
    func clickAction2(){
        print("clickAction2")
    }
}

