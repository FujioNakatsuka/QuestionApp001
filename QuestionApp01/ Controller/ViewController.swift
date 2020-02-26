//
//  ViewController.swift
//  QuestionApp01
//
//  Created by 中塚富士雄 on 2020/02/27.
//  Copyright © 2020 中塚富士雄. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var maxScoreLabel: UILabel!
    
    var correctCount = 0
    var wrongCount = 0
    var maxScore = 0
    var questionNumber = 0
    
    let imagesList = ImagesList()
    
    var pickedAnswer = false
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        correctCount = 0
        wrongCount = 0
        questionNumber = 0
        
        imageView.image = UIImage(named: imagesList.list[0].imageText!)
        
    }
    
    
    @IBAction func answer(_ sender: Any) {
    
        if (sender as AnyObject).tag == 1{
            
            pickedAnswer = true
            
         
            
            
        }else if (sender as AnyObject).tag == 2{
            
            pickedAnswer = false
            
        }
        
      check()
      nextQuestions()
        
    }
    
    func check(){
        
        
        let correctAnswer = imagesList.list[questionNumber].answer
        if correctAnswer == pickedAnswer{
            
        print("正解")
        correctCount = correctCount + 1
            
        }else{
            
        print("間違い")
        wrongCount = wrongCount + 1
            
            
            
        }
        
        
    }
    func nextQuestions(){
        
        if questionNumber <= 9{
            
            questionNumber = questionNumber + 1
            imageView.image = UIImage(named: imagesList.list[questionNumber].imageText!)
            
            
        }else{
            
            print("問題終了だぞ")
            
            performSegue(withIdentifier: "next", sender: nil)
            
            
            
            
        }
        
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "next"{
            
            let nextVC = segue.destination as! NextViewController
            
            nextVC.correctedCount = correctCount
            nextVC.wrongCount = wrongCount
            
            
        }
        
        
    }
    
    
}

