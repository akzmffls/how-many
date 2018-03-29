//
 // ViewController.swift
//  how many
//
//  Created by D7703_14 on 2018. 3. 26..
//  Copyright © 2018년 Personal Team. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var input: UITextField!
    @IBOutlet var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //deledgate 연결
        input.delegate = self
    }
    
    
    @IBAction func guess(_ sender: Any) {
        //랜덤 숫자 생성
        let number = arc4random() % 6
        print(number)
        let numberString = String(number)
        
        if input.text == numberString{
            label.text = "빙고"
        }else{
            label.text = "실패"
        }
        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            input.resignFirstResponder()
            return true
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {view.endEditing(true)
        input.backgroundColor = UIColor.cyan
    }
    }
    
    
    
    

    


