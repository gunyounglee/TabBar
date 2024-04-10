//
//  ViewController.swift
//  DatePicker
//
//  Created by TJ on 2022/04/16.
//

import UIKit

class DateViewController: UIViewController {

    //(property)
    @IBOutlet weak var lblCurrentTime: UILabel!
    @IBOutlet weak var lblPickerTime: UILabel!
    
    let interval = 1.0 //시간 간격이 1초
    let timeSelector : Selector = #selector(DateViewController.updateTime)
    
    //(function)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        
        lblPickerTime.text?.removeAll()
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "ko")
        //24시간 hh -> HH보여주기
        formatter.dateFormat = "yyyy-MM-dd EEE a HH:mm"
        lblPickerTime.text = "선택시간 : \(formatter.string(from: datePickerView.date))"
    }
    
    //현재 표준시간 표시해주는 함수
    @objc func updateTime(){
        let date = NSDate()
        let formatter = DateFormatter()
        
        //나라설정
        formatter.locale = Locale(identifier: "ko")
        //시간 보여주는 모양 설정
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm:ss"
        lblCurrentTime.text = "현재시간 : \(formatter.string(from: date as Date))"
    }
    
    @IBAction func btnGoFirst(_ sender: UIButton) {

        tabBarController?.selectedIndex = 0
    }
    
    
}

