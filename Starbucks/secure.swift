//
//  background.swift
//  Starbucks
//
//  Created by κΉνμ on 2022/10/26.
//

import Foundation
import UIKit

class secure: UIViewController {
    
    @IBOutlet var secureImg: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }


}
