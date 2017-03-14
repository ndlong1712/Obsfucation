//
//  ViewController.swift
//  trhhrtthrtrhhrt
//
//  Created by LongND9 on 2/22/17.
//  Copyright © 2017 LongND9. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet var btnLogin: UIButton!
  @IBOutlet var labelPassWord: UITextField!
  @IBOutlet var lbUserName: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    print("loaded....!") //skype://14085555555?cal
    let url = URL(string: "skype://+841653821420?call")!
    if #available(iOS 10.0, *) {
      UIApplication.shared.open(url, options: [:], completionHandler: nil)
    } else {
      UIApplication.shared.openURL(url)
    }
    
    
  }
  
  @IBAction func didTapLogin(_ sender: Any) {
    let name = lbUserName.text
    let pass = labelPassWord.text
    if checkLogin(name: name!, pass: pass!) {
      let mainSto = UIStoryboard(name: "Main", bundle: nil)
      let vc = mainSto.instantiateViewController(withIdentifier: SuccessViewController.ClassName) as! SuccessViewController
      navigationController?.pushViewController(vc, animated: true)
    } else {
      let alret = UIAlertController(title: "", message: "Incorrect Username or Password!", preferredStyle: .alert)
      alret.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
      present(alret, animated: true, completion: nil)
    }
  }
  
  func checkLogin(name: String, pass: String) -> Bool {
    if name == "admin" && pass == "admin" {
      return true
    }
    return false
    
  }
  
  func demoFunction() {
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    
  }


}

