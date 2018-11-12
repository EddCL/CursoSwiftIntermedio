//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by MacBook on 07/11/18.
//  Copyright © 2018 potato. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var responses : [Answer]!
    
    @IBOutlet weak var resultAnswerLabel: UILabel!
    @IBOutlet weak var resultDefinitionLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
        navigationItem.hidesBackButton = true
        // Do any additional setup after loading the view.
    }
    
    func calculatePersonalityResult(){
        var frequencyOfAnswers: [AnimalType: Int] = [ : ]
        let responsesTypes = responses.map{ $0.type}
        for response in responsesTypes{
            frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0) + 1
        }
        
        let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 > $1.1}.first!.key
//        let frequentAnswersSorted = frequencyOfAnswers.sorted(by: {(pair1, pair2) -> Bool in return pair1.value > pair2.value})
//        let mostCommonAnswer = frequentAnswersSorted.first!.key
//
        resultAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
        resultDefinitionLabel.text = mostCommonAnswer.definition
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
