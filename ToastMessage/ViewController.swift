//
//  ViewController.swift
//  ToastMessage
//
//  Created by PASHA on 07/01/19.
//  Copyright © 2019 Reatchall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  @IBAction func sendToastTap(_ sender: Any) {
    
    toastMessage(message: "hello good morning hello good morninghello good morninghello good morninghello good morninghello good morninghello good morninghello ")
  }
  
}

extension UIViewController
{
  
  func toastMessage(message:String) {
    guard let window = UIApplication.shared.keyWindow else {
      return
    }
    
    let toastLbl = UILabel()
    toastLbl.text = message
    toastLbl.textAlignment = .center
    toastLbl.font = UIFont.systemFont(ofSize: 18)
    toastLbl.textColor = UIColor.white
    toastLbl.backgroundColor = UIColor.black.withAlphaComponent(1.0)
    toastLbl.numberOfLines = 0
    
    let textSize = toastLbl.intrinsicContentSize
    let lblWidth = min(textSize.width, window.frame.size.width - 40)
    let lblHeight = (textSize.width/window.frame.size.width) * 30
    let adjustHeight = max(lblHeight, textSize.height + 20) 
    
    toastLbl.frame = CGRect(x: 20, y: window.frame.size.height - 180, width: lblWidth + 20, height: adjustHeight)
    toastLbl.center.x = window.center.x
    toastLbl.layer.cornerRadius = 10
    toastLbl.clipsToBounds = true
    window.addSubview(toastLbl)
    
    UIView.animate(withDuration: 3.0, animations: {
      toastLbl.alpha = 0
    }) { (_) in
      toastLbl.removeFromSuperview()
    }
    
  }
  
 
}
