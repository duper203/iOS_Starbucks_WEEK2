//
//  ViewController.swift
//  Starbucks
//
//  Created by 김혜수 on 2022/10/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var orderButtonn: UIButton!
    @IBOutlet weak var myMenuButton: UIButton!
    
    @IBAction func noticeButton(_ sender: Any) {
        print("button clicked")
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "noticeViewController") as! noticeViewController
        nextVC.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        self.present(nextVC, animated: true, completion: nil)
    }
    
    @IBAction func noticeButton2(_ sender: Any) {
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "noticeViewControllerTwo") as! noticeViewControllerTwo
        nextVC.modalTransitionStyle = UIModalTransitionStyle.flipHorizontal
        self.present(nextVC, animated: true, completion: nil)
    }
    @IBAction func orderPayButtonn(_ sender: Any) {
        print("button clicked")
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "orderPay") as! orderPay
        nextVC.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        self.present(nextVC, animated: true, completion: nil)
    }
    
    
    func setRadius(){
        orderButtonn.layer.cornerRadius = 10
        myMenuButton.layer.cornerRadius = 10

    }
    
    @IBAction func popupPage(){
        print("popup")
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "popupController") as! popupController
        nextVC.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        DispatchQueue.main.async {
                       self.present(nextVC, animated: true, completion: nil)
                   }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        setRadius()
        popupPage()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
        
                
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }


}

