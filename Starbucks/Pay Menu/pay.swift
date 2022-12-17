//
//  pat.swift
//  Starbucks
//
//  Created by 김혜수 on 2022/10/28.
//

import Foundation
import UIKit

class pay: UIViewController {
     
    @IBOutlet weak var timeBtn: UILabel!
    
    //타이머 변수 선언
    var timer : Timer?
    //타이머에 사용할 번호값
    var timerNum: Int = 0
     
    //타이머 시작
    public func startTimer() {
        //기존에 타이머 동작중이면 중지 처리
        if timer != nil && timer!.isValid {
            timer!.invalidate()
        }
     
        //타이머 사용값 초기화
        timerNum = 60
        //1초 간격 타이머 시작
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerCallback), userInfo: nil, repeats: true)
    }
     
    //타이머 동작 func
    @objc func timerCallback() {
        
        //60초 ~ 1초 까지 timeBtn의 타이틀 변경
        timeBtn.text = "\(timerNum)초"
     
        //timerNum이 0이면(60초 경과) 타이머 종료
        if(timerNum == 0) {
            timer?.invalidate()
            timer = nil
        }
        timerNum-=1
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()
        
    }
}


