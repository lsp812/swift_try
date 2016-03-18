//
//  ViewController.swift
//  device
//
//  Created by 大麦 on 16/3/9.
//  Copyright © 2016年 lsp. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate,UITableViewDataSource,UITableViewDelegate,UIWebViewDelegate,UITextViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        //
        self.view.backgroundColor = UIColor.lightGrayColor()
        //
        self.swift_button(13)
        //
        self.swift_label()
        //
        self.swift_imageView()
        //
        self.swift_textField()
        //
        self.swift_view()
        //
        self.swift_tableView()
        //
        self.swift_webView()
        //
        self.swift_textView()

    }
    //Swift-UIButton
    func swift_button(aa:Int){
        
        let buttonOne:UIButton = UIButton(type: .Custom)
        buttonOne.frame = CGRectMake(10, 50, 100, 40)
        buttonOne .setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        buttonOne .setTitle("按钮", forState: UIControlState.Normal)
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
    }
    //Swift-UIlabel
    func swift_label(){
        
        let labelOne:UILabel = UILabel()
        labelOne.frame = CGRectMake(10, 100, 100, 30)
        labelOne.text = "label_sadasdasd";
        labelOne.font = UIFont.boldSystemFontOfSize(15.0)
        labelOne.textColor = UIColor.redColor()
        labelOne.backgroundColor = UIColor.greenColor()
        labelOne.textAlignment = NSTextAlignment.Center
        labelOne.adjustsFontSizeToFitWidth = true
        labelOne.layer.cornerRadius = 5.0
        labelOne.clipsToBounds = true
        labelOne.layer.borderColor = UIColor.blackColor().CGColor
        labelOne.layer.borderWidth = 1.0
        self.view .addSubview(labelOne)
        
    }
    //swift_UIImageView
    func swift_imageView(){
        
        let imageViewOne:UIImageView = UIImageView()
        imageViewOne.frame = CGRectMake(10, 150, 100, 40)
        imageViewOne.image = UIImage(named:"btn_backImage")
        imageViewOne.layer.cornerRadius = 5.0
        imageViewOne.clipsToBounds = true
        imageViewOne.tag = 100
        imageViewOne.userInteractionEnabled = true
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: Selector("tapAction:"))
        imageViewOne.addGestureRecognizer(tap)
        self.view.addSubview(imageViewOne)
    }
    func tapAction(tapGesture:UITapGestureRecognizer){
        
        let tag = tapGesture.view?.tag
        print(tag)
    }
    //swift_UItextField
    func swift_textField(){
        
        let textfieldOne:UITextField = UITextField()
//        textfieldOne.borderStyle = UITextBorderStyle.None
//        textfieldOne.borderStyle = UITextBorderStyle.RoundedRect
         textfieldOne.borderStyle = UITextBorderStyle.Line
//        textfieldOne.borderStyle = UITextBorderStyle.Bezel
        textfieldOne.frame = CGRectMake(10, 200, 100, 40)
        textfieldOne.delegate = self;
        textfieldOne.placeholder = "UItextField"
//        textfieldOne .addTarget(self, action: Selector("textfieldAction:"), forControlEvents: UIControlEvents.TouchDown)
        self.view .addSubview(textfieldOne)
    }
    func textfieldAction(textF:UITextField){
        print(textF.text)
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        print(textField.text)
        return true
    }
    //swift_UIView
    func swift_view(){
        let viewOne:UIView = UIView()
        viewOne.frame = CGRectMake(10, 250, 100, 40)
        viewOne.backgroundColor = UIColor.greenColor()
        self.view.addSubview(viewOne)
    }
    //swift_UITableview
    func swift_tableView(){
        let tableV:UITableView = UITableView()
        tableV.frame = CGRectMake(120, 50, 40, 250)
        tableV.separatorStyle = UITableViewCellSeparatorStyle.None
        tableV.delegate = self
        tableV.dataSource = self
        self.view.addSubview(tableV)
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func numberOfSectionsInTableView(tabhhhleView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = UITableViewCell()
        let title = "\(indexPath.row)"
        cell.textLabel?.text = title
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        return cell
    }
    //swift_UIwebView
    func swift_webView(){
        let webView:UIWebView = UIWebView()
        webView.backgroundColor = UIColor.greenColor()
        webView.frame = CGRectMake(10, 310, 320, 150)
        webView.loadRequest(NSURLRequest(URL:NSURL(string:"https://www.baidu.com")!))
        webView.delegate = self
        self.view .addSubview(webView)
    }
    //swift_UItextView
    func swift_textView(){
        let textView:UITextView = UITextView()
        textView.backgroundColor = UIColor.greenColor()
        textView.frame = CGRectMake(160, 50, 150, 100)
        textView.textColor = UIColor.blackColor()
        textView.delegate = self
        self.view .addSubview(textView)
    }
    func textViewShouldEndEditing(textView: UITextView) -> Bool {
        textView.resignFirstResponder()
        return true
    }
    func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
        
        if(text=="\n")
        {
            textView.resignFirstResponder()
            return false
        }
        return true
    }
    
}

