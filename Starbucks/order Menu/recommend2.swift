//
//  recommend2.swift
//  Starbucks
//
//  Created by 김혜수 on 2022/10/29.
//

import Foundation
import UIKit

class recommendTwo: UIViewController {
    
    @IBAction func coffee(_ sender: Any) {
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "americanoCalViewController") as! americanoCalViewController
        nextVC.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        self.present(nextVC, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
