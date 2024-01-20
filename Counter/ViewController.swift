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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func minesAction(_ sender: Any) {
        count = count + 1
        label.text = "\(count)"
    }
    @IBAction func plusAction(_ sender: Any) {
        count = count - 1
        label.text = "\(count)"
    }
    
    @IBAction func resetAction(_ sender: Any) {
        count = 0
        label.text = "\(count)"
        
    }
}

