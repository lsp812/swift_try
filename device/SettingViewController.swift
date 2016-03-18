//
//  SettingViewController.swift
//  device
//
//  Created by 大麦 on 16/3/17.
//  Copyright © 2016年 lsp. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        self.swift_button(1)
        self.swift_button1(2)
    }
    
    func swift_button(aa:Int){
        
        let buttonOne:UIButton = UIButton(type: .Custom)
        buttonOne.frame = CGRectMake(10, 150, 100, 40)
        buttonOne .setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        buttonOne .setTitle("pop", forState: UIControlState.Normal)
        buttonOne .setBackgroundImage(UIImage(named: "btn_backImage"), forState: UIControlState.Normal)
        buttonOne .backgroundColor = UIColor.yellowColor()
        buttonOne .titleLabel?.adjustsFontSizeToFitWidth=true
        buttonOne.layer.cornerRadius = 10.0
        buttonOne.clipsToBounds = true
        buttonOne.tag = aa;
        //        buttonOne.titleLabel?.textAlignment = NSTextAlignment.Left
        //        buttonOne.titleLabel?.font=UIFont.systemFontOfSize(16.0)
        buttonOne.layer.borderColor = UIColor.blackColor().CGColor
        buttonOne.layer.borderWidth = 1.0
        buttonOne .addTarget(self, action: Selector("tapped:"), forControlEvents: UIControlEvents.TouchUpInside)
        self.view .addSubview(buttonOne)
    }
    func swift_button1(aa:Int){
        
        let buttonOne:UIButton = UIButton(type: .Custom)
        buttonOne.frame = CGRectMake(10, 100, 100, 40)
        buttonOne .setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        buttonOne .setTitle("dis", forState: UIControlState.Normal)
        buttonOne .setBackgroundImage(UIImage(named: "btn_backImage"), forState: UIControlState.Normal)
        buttonOne .backgroundColor = UIColor.yellowColor()
        buttonOne .titleLabel?.adjustsFontSizeToFitWidth=true
        buttonOne.layer.cornerRadius = 10.0
        buttonOne.clipsToBounds = true
        buttonOne.tag = aa;
        //        buttonOne.titleLabel?.textAlignment = NSTextAlignment.Left
        //        buttonOne.titleLabel?.font=UIFont.systemFontOfSize(16.0)
        buttonOne.layer.borderColor = UIColor.blackColor().CGColor
        buttonOne.layer.borderWidth = 1.0
        buttonOne .addTarget(self, action: Selector("tapped:"), forControlEvents: UIControlEvents.TouchUpInside)
        self.view .addSubview(buttonOne)
    }
    func tapped(button:UIButton){
        print(button.tag)
        if(button.tag==1)
        {
            self.navigationController?.popViewControllerAnimated(true)
        }
        else
        {
            self.dismissViewControllerAnimated(true, completion: nil)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
