//
//  coldAmericano.swift
//  Starbucks
//
//  Created by 김혜수 on 2022/10/28.
//

import Foundation
import UIKit

class coldAmericano: UIViewController {
    

    @IBAction func orderNow2(_ sender: Any) {
        print("order")
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "americanoCalViewController") as! americanoCalViewController
        nextVC.modalTransitionStyle = UIModalTransitionStyle.flipHorizontal
        self.present(nextVC, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        print("notice viewWillAppear")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("notice viewDidAppear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("notice viewDidDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("notice viewWillDisappear")
    }


}

