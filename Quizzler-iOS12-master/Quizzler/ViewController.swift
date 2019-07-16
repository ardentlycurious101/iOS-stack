//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    let allQuestions = QuestionBank()
    var pressedAnswer = false;
    var questionNumber = 0
    var score : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        questionLabel.text = allQuestions.list[0].questionText
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pressedAnswer = true
        } else if sender.tag == 2 {
            pressedAnswer = false
        }
        checkAnswer()
        questionNumber += 1
        nextQuestion()
        
    }
    
    
    func updateUI() {
        scoreLabel.text = "Score: \(score)" // escape the string
        progressLabel.text = "\(questionNumber + 1)/13"
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber + 1)
    }
    

    func nextQuestion() {
        if questionNumber < 13 {
            questionLabel.text = allQuestions.list[questionNumber].questionText
            updateUI()
        } else {
            let alert = UIAlertController(title: "Awesome!", message: "You've finished all questions, do you want to start over?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
                self.startOver()
            })
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
            
        }
    }
    
    
    func checkAnswer() {
        if pressedAnswer == allQuestions.list[questionNumber].answer {
            ProgressHUD.showSuccess("Correct!")
            score += 2
        } else {
            ProgressHUD.showError("Wrong!")
            score -= 1
        }
    }
    
    
    func startOver() {
        questionNumber = 0
        score = 0
        nextQuestion()
    }
    

    
}
