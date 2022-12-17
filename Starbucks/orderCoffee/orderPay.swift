//
//  orderPay.swift
//  Starbucks
//
//  Created by 김혜수 on 2022/10/26.
//

import Foundation
import UIKit

class orderPay: UIViewController {
    
    @IBOutlet weak var hotCoffee: UIView!
    @IBOutlet weak var iceCoffee: UIView!
    @IBOutlet weak var switchViews: UISegmentedControl!
    
    @IBAction func goBacktoMain(_ sender: UIBarButtonItem) {
        self.presentingViewController?.dismiss(animated: true)
    }
    
    
    @IBAction func switchIt(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex==0{
            hotCoffee.alpha = 1.0
            iceCoffee.alpha = 0.0
        }else{
            hotCoffee.alpha = 0.0
            iceCoffee.alpha = 1.0
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

