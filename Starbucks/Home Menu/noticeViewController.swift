//
//  noticeViewController.swift
//  Starbucks
//
//  Created by 김혜수 on 2022/10/25.
//

import Foundation
import UIKit

class noticeViewController: UIViewController {
    
    
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

