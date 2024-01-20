//
//  ViewController.swift
//  Counter
//
//  Created by Alibi on 18.01.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    var count = 0
    @IBOutlet var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func plusAction(_ sender: Any) {
        count = count + 1
        label.text = "\(count)"
        textView.insertText("\(getNowDate()) значение изменено на +1\n")
    }
    @IBAction func minusAction(_ sender: Any) {
        if (count == 0) {
            textView.insertText("\(getNowDate()) попытка уменьшить значение счётчика ниже 0\n")
            return
        }
        count = count - 1
        label.text = "\(count)"
        textView.insertText("\(getNowDate()) значение изменено на -1\n")
    }
    
    @IBAction func resetAction(_ sender: Any) {
        count = 0
        label.text = "\(count)"
        textView.insertText("\(getNowDate()): значение сброшено\n")
    }
    
    private func getNowDate() -> String {
        let now = Date()
        let df = DateFormatter()
        df.dateFormat = "yyyy-MM-dd hh:mm:ss"
        return df.string(from: now)
    }
}

