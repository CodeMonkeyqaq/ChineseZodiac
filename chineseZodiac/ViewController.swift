//
//  ViewController.swift
//  chineseZodiac
//
//  Created by 王星洲 on 2018/4/29.
//  Copyright © 2018年 cn.edu.tongji.1652977. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yearOfBirth: UITextField!
    
    @IBOutlet weak var image: UIImageView!
    
    @IBAction func okTapped(_ sender: Any) {
        yearOfBirth.resignFirstResponder()
        if Int(yearOfBirth.text!) != nil{
            let imageNumber = (Int(yearOfBirth.text!)! - 4 + 12) % 12
            image.image = UIImage.init(named: String(imageNumber))
        }else{
            print("enter a year!")
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        yearOfBirth.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

