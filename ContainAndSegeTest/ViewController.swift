//
//  ViewController.swift
//  ContainAndSegeTest
//
//  Created by kiddchantw on 2018/3/31.
//  Copyright © 2018年 kiddchantw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var myContain: UIView!
    
    @IBOutlet var mySegmented: UISegmentedControl!
    
    weak var currentViewController: UIViewController?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        containViewChange(byViewId: "seg0")

    }
    
    
    func containViewChange(byViewId:String){
        let controller = storyboard!.instantiateViewController(withIdentifier: byViewId)
        addChildViewController(controller)
        
        controller.view.translatesAutoresizingMaskIntoConstraints = false
        myContain.addSubview(controller.view)
        
        NSLayoutConstraint.activate([
            controller.view.leadingAnchor.constraint(equalTo: myContain.leadingAnchor, constant: 0),
            controller.view.trailingAnchor.constraint(equalTo: myContain.trailingAnchor, constant: 0),
            controller.view.topAnchor.constraint(equalTo: myContain.topAnchor, constant: 0),
            controller.view.bottomAnchor.constraint(equalTo: myContain.bottomAnchor, constant: 0)
            ])
        controller.didMove(toParentViewController: self)
    }
    
    
  
    
    
    @IBAction func segChage(_ sender: UISegmentedControl) {
        switch  sender.selectedSegmentIndex{
        case 0:
            containViewChange(byViewId: "seg0")
        case 1:
            containViewChange(byViewId: "seg1")
        case 2:
            containViewChange(byViewId: "seg2")
        case 3:
            containViewChange(byViewId: "seg1")
        default:
            break
        }
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

