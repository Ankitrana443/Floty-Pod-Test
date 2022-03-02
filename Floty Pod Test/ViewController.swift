//
//  ViewController.swift
//  Floty Pod Test
//
//  Created by Ankit Rana on 02/03/22.
//

import UIKit
import Floaty

class ViewController: UIViewController, FloatyDelegate {
    var floaty = Floaty()
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutFAB()
      
        // Do any additional setup after loading the view.
    }

    @IBAction func endEditing() {
      view.endEditing(true)
    }
    
    
    
    @IBAction func btn(_ sender: Any) {
//        if sender.isOn == true {
//          floaty.buttonImage = UIImage(named: "custom-add")
//        } else {
//          floaty.buttonImage = nil
//        }
       
    }
    @IBAction func customImageSwitched(_ sender: UISwitch) {
      if sender.isOn == true {
        floaty.buttonImage = UIImage(named: "custom-add")
      } else {
        floaty.buttonImage = nil
      }
    }
    func layoutFAB() {
      let item = FloatyItem()
      item.hasShadow = false
      item.buttonColor = UIColor.blue
      item.circleShadowColor = UIColor.red
      item.titleShadowColor = UIColor.blue
      item.titleLabelPosition = .left
      item.title = "titlePosition right"
      item.handler = { item in

      }

      floaty.hasShadow = false
        
       
      floaty.addItem(title: "I got a title")
      floaty.addItem("I got a icon", icon: UIImage(named: "icShare"))
      floaty.addItem("I got a handler", icon: UIImage(named: "icMap")) { item in
        let alert = UIAlertController(title: "Hey", message: "I'm hungry...", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Me too", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
      }
      floaty.addItem(item: item)
      floaty.paddingX = 10
        floaty.paddingY = 10
      floaty.fabDelegate = self
      
      self.view.addSubview(floaty)
      
    }
    func floatyWillOpen(_ floaty: Floaty) {
      print("Floaty Will Open")
    }
    
    func floatyDidOpen(_ floaty: Floaty) {
      print("Floaty Did Open")
    }
    
    func floatyWillClose(_ floaty: Floaty) {
      print("Floaty Will Close")
    }
    
    func floatyDidClose(_ floaty: Floaty) {
      print("Floaty Did Close")
    }
}

