//
//  americanoCalViewController.swift
//  Starbucks
//
//  Created by 김혜수 on 2022/10/28.
//

import Foundation
import UIKit

class americanoCalViewController: UIViewController {
    
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBAction func amount(_ sender: UIStepper) {
        
        priceLabel.text = Int(sender.value).description
        
    }
    
    
    @IBAction func realOrder(_ sender: Any) {
        
        let data : String = priceLabel.text!
        
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "dataViewController") as! dataViewController
        nextVC.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        
       nextVC.result1 = data
        
        self.present(nextVC, animated: true, completion: nil)
        
    }
    
    func showAlertController() {
        //UIAlertController
        let alert = UIAlertController(title:"", message: "장바구니에 추가되었습니다.", preferredStyle: .alert)
        
        // Button
        let ok = UIAlertAction(title: "장바구니 가기", style: .default, handler: nil)
        let cancel = UIAlertAction(title: "다른 메뉴 더보기", style: .default, handler: nil)
        
        alert.addAction(cancel)
        alert.addAction(ok)
        
        //present
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func basket(_ sender: Any) {
        showAlertController()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
} 
