//
//  dataViewController.swift
//  Starbucks
//
//  Created by 김혜수 on 2022/10/29.
//

import Foundation
import UIKit

class dataViewController: UIViewController {
    
    
    @IBOutlet weak var data: UILabel!
    
    var result1 : String? = "DEFAULT"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        data.text = result1
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

