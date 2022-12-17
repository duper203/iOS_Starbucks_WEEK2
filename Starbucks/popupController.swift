//
//  popupController.swift
//  Starbucks
//
//  Created by 김혜수 on 2022/10/26.
//

import Foundation
import UIKit

class popupController: UIViewController {
    
    @IBOutlet weak var goBack: UINavigationItem!
    @IBOutlet weak var moreinfo: UIButton!
    
    @IBOutlet weak var xButtonn: UIBarButtonItem!
    
    
    @IBOutlet weak var popupview: UIView!
    
    func setRadius(){
        moreinfo.layer.cornerRadius = 10
    }
    
    @IBAction func xButton(_ sender: Any) {
        print("button clicked")
        self.presentingViewController?.dismiss(animated: true)
            
        }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("popup viewDidLoad")
        setRadius()
        
    }


}
