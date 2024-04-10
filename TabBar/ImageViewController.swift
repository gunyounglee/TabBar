//
//  ViewController.swift
//  ImageView
//
//  Created by TJ on 2022/04/10.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var btnResize: UIButton!
    
    var imgOn = UIImage(named: "lamp_on.png")//켜진 전구 이미지
    var imgOff = UIImage(named: "lamp_off.png")//꺼진 전구 이미지
    
    var isZoom = false // 이미지 확대 여부 상태 변수
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
        imgView.image = imgOn
    }

    @IBAction func btnResizeImage(_ sender: UIButton) {
     //이미지 크기를 두배로
        let scale : CGFloat = 2.0
        var newWidth : CGFloat!
        var newHeight : CGFloat!
        
        
        
        if isZoom {
            newWidth = imgView.frame.width / scale
            newHeight = imgView.frame.height / scale
            btnResize.setTitle("Image확대", for: .normal)
        }else{
            newWidth = imgView.frame.width * scale
            newHeight = imgView.frame.height * scale
            btnResize.setTitle("Image축소", for: .normal)
        }
        
        imgView.frame.size = CGSize(width: newWidth , height: newHeight )
        isZoom = !isZoom
    	
        
    }
    @IBAction func switchimageOnOff(_ sender: UISwitch) {
    
//        switch sender.isOn {
//        case true : imgView.image = imgOn
//        default : imgView.image = imgOff
//        }
        
        if sender.isOn {
            imgView.image = imgOn
        }else{
            imgView.image = imgOff
        }
    }
    
}

