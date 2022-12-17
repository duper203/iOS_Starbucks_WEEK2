//
//  shopViewController.swift
//  Starbucks
//
//  Created by 김혜수 on 2022/10/27.
//

import Foundation
import UIKit

var images = [ "pageOne.jpg", "pageTwo.jpg",]

class shopViewController: UIViewController {
    
    
    @IBOutlet weak var pageImageOne: UIImageView!
    @IBOutlet weak var pagecontrol: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //페이지 컨트롤의 전체 페이지를 images 배열의 전체 개수 값으로 설정
        pagecontrol.numberOfPages = images.count
        
        // 페이지 컨트롤의 현재 페이지를 0으로 설정
        pagecontrol.currentPage = 0
        
        // 페이지 표시 색상을 밝은 회색 설정
        pagecontrol.pageIndicatorTintColor = UIColor.lightGray
        
        // 현재 페이지 표시 색상을 검정색으로 설정
        pagecontrol.currentPageIndicatorTintColor = UIColor.black
        
        pageImageOne.image = UIImage(named: images[0])
    }
    
    @IBAction func pagechanged(_ sender: UIPageControl) {
        
        // images라는 배열에서 pageControl이 가르키는 현재 페이지에 해당하는 이미지를 imgView에 할당
        pageImageOne.image = UIImage(named: images[pagecontrol.currentPage])
    }
}
