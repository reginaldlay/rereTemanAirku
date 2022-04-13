//
//  QuizStage1Feeder.swift
//  rereTemanAirku
//
//  Created by Kevin Gosalim on 13/04/22.
//

import Foundation
import UIKit

class QuizStage1Feeder {
    
    func feedQuizStage1() -> [Quiz] {
        var arrOfQuiz: [Quiz] = []
        
        let quiz0 = Quiz(quizImageA: "1-benar",
                         isACorrect: true,
                         quizImageB: "1-salah",
                         isBCorrect: false,
                         quizBanner: "label tantangan 1")
        
        let quiz1 = Quiz(quizImageA: "2-benar",
                         isACorrect: true,
                         quizImageB: "2-salah",
                         isBCorrect: false,
                         quizBanner: "label tantangan 2")
        
        let quiz2 = Quiz(quizImageA: "3-salah",
                         isACorrect: false,
                         quizImageB: "3-benar",
                         isBCorrect: true,
                         quizBanner: "label tantangan 3")
        
        let quiz3 = Quiz(quizImageA: "4-benar",
                         isACorrect: true,
                         quizImageB: "4-salah",
                         isBCorrect: false,
                         quizBanner: "label tantangan 4")
        
        let quiz4 = Quiz(quizImageA: "5-salah",
                         isACorrect: false,
                         quizImageB: "5-benar",
                         isBCorrect: true,
                         quizBanner: "label tantangan 5")
    
       arrOfQuiz.append(quiz0)
       arrOfQuiz.append(quiz1)
       arrOfQuiz.append(quiz2)
       arrOfQuiz.append(quiz3)
       arrOfQuiz.append(quiz4)
       return arrOfQuiz
    }
}
