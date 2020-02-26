//
//  NextViewController.swift
//  QuestionApp01
//
//  Created by 中塚富士雄 on 2020/02/27.
//  Copyright © 2020 中塚富士雄. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    
    @IBOutlet weak var correctLabel: UILabel!
    
    @IBOutlet weak var wrongLabel: UILabel!
    
    var correctedCount = Int()
    var wrongCount = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        correctLabel.text = String(correctedCount)
        wrongLabel.text = String(wrongCount)
        
    }
    
    @IBAction func back(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    
    
    

}
