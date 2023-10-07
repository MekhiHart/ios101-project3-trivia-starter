//
//  QuizViewController.swift
//  Trivia
//
//  Created by Mekhi Hart Dela Cruz on 10/6/23.
//

import UIKit

class QuizViewController: UIViewController {
    
    // IB
    
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var currentQuestionLabel: UILabel!
    @IBOutlet weak var totalNumberQuestionLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
    
    // Buttons
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    private var correctAnswers = 0
    private var currentQuestionIndex = 0
    private var questionList = [Question]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        questionList = createQuestions()
        configureUI()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let currQuestion = questionList[currentQuestionIndex]
        let buttonTag = sender.tag
        let answerResult = currQuestion.choices[buttonTag].1 // gives result of the answer
        
        if answerResult{
            print("correct answer!")
            correctAnswers += 1
        }
        currentQuestionIndex = min(questionList.count - 1, currentQuestionIndex + 1)
        configureUI()

        
//        currentQuestionIndex += 1
    } // buttonPressed
    public func configureUI() -> Void{
        let currQuestion = questionList[currentQuestionIndex]
        categoryLabel.text = currQuestion.category
        currentQuestionLabel.text = String(currentQuestionIndex + 1)
        totalNumberQuestionLabel.text = String(questionList.count)
        questionLabel.text = currQuestion.question
        
        // buttons
        button1.setTitle(currQuestion.choices[0].0, for: .highlighted)
        button1.setTitle(currQuestion.choices[0].0, for: .normal)
        
        button2.setTitle(currQuestion.choices[1].0, for: .highlighted)
        button2.setTitle(currQuestion.choices[1].0, for: .normal)
        
        button3.setTitle(currQuestion.choices[2].0, for: .highlighted)
        button3.setTitle(currQuestion.choices[2].0, for: .normal)
        
        button4.setTitle(currQuestion.choices[3].0, for: .highlighted)
        button4.setTitle(currQuestion.choices[3].0, for: .normal)
    }
    
    public func createQuestions() -> [Question]{
        let question1 = Question(category: "Entertainment: Video Games",
                                 question: "What is the name of Mario's brother",
                                 choices: [
                                    ("Luigi", true),
                                    ("Browser", false),
                                    ("Toad", false),
                                    ("Yoshi", false)
        ])
        
        let question2 = Question(category: "Music",
                                 question: "What is the music track from mincraft which uses a hand pan",
                                 choices: [
                                    ("Subwoofer Lullaby", false),
                                    ("Living Mice", false),
                                    ("Aria Math", true),
                                    ("Moog City", false)
                                 ])
        
        let question3 = Question(category: "Education: Computer Science",
                                 question: "What is the Time complexity of a Merge Sort",
                                 choices: [
                                    ("O(n)", false),
                                    ("O(n^2)", false),
                                    ("O(1)", false),
                                    ("O(n log(n)", true)
                                ])
                        
        
        let question4 = Question(category: "Education: Computer Science", question: "What is the time complexity of a for loop that iterates J times which is inside the scope of a for loop that iterates N times?",
                                 choices: [
                                    ("O(N + J)", false),
                                    ("O(N * J)", true),
                                    ("O(N ** J)", false),
                                    ("O(N log(J))", false)
        
        ])
        
        return [question1, question2, question3, question4]
        
    } // createQuestions
    
    


}
