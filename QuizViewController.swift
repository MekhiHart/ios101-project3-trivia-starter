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
    
    
    private let correctAnswers = 0
    private let currentQuestionIndex = 0
    private let questionList = [Question]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
                                 question: "What is music track from mincraft uses a hand pan",
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
