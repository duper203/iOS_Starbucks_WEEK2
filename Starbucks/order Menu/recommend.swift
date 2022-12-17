//
//  recommend.swift
//  Starbucks
//
//  Created by 김혜수 on 2022/10/29.
//

import Foundation
import UIKit

class recommend: UIViewController {
    
   
    @IBAction func recommenBtn(_ sender: Any) {
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "recommendTwo") as! recommendTwo
        nextVC.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        self.present(nextVC, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
