//
//  ViewController.swift
//  ChallengeCalculator Dec. 2
//
//  Created by World Domination a Brand on 12/2/19.
//  Copyright © 2019 Pursuitful stuff. All rights reserved.
//

import UIKit

// need an enum because you are comparing two states/items.
enum ChallengeType: Int { // using raw values
    // assining the Challengetype to an int automatic makes elevation
    // would be inside of class if it DIRECTLY affects the class
    case elevation // 0
    case distance // 1
}

class ViewController: UIViewController {

    //MARK: Outlets
    
    @IBOutlet weak var segmentsControl: UISegmentedControl!
    
    @IBOutlet weak var metricTextField: UITextField!
    
    @IBOutlet weak var numberOfWeeksTextField: UITextField!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    // distance is miles
    // elevation is feet
    // ideally distance would have its own enum with different types of metric mesurement like miles feet inches
    
    var currentChallenge: ChallengeType = ChallengeType.elevation {
        // anytime this is changed.. the didset gets called and .. the function is ran
        didSet{
            // TODO - calculate()
            calculateChallenge()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // do not need today
    }

    //MARK: ACTIONS
  
    @IBAction func calculateChallengePressed(_ sender: UIButton) {
        // will call calculateChallenge
        calculateChallenge()
    }
    
    
    
    // want this outside so that you can call anyway and not only inside of the button function
    func calculateChallenge() {
        //get the metric and the number of days from the textFields
        // unwrapped the textField and take the string that is a number and cast it to be a double
        guard let metric = Double(metricTextField.text ?? ""),
            let numberOfWeeks = Int(numberOfWeeksTextField.text ?? "") else {
                // DONT want to crash the app if user doesn't do it instead put an alert inside that shows them
                print("missing required fields")
                return
        }
        let challenge = Challenge()
        
        let weeklyTraining = challenge.calculateWeeklyTraining(for: metric, and: numberOfWeeks)
        
        // switch on the current selected segment in our segments control
        switch currentChallenge {
        case .elevation:
            messageLabel.text = "Weekly training: \(weeklyTraining) feet"
            // keep in mind feet and miles are hard- coded here
            // ideally those would be in user settings of the app
        case .distance:
            messageLabel.text = "Weekly training: \(weeklyTraining) miles"
        }
    }
    
    
    
    @IBAction func segmentsControlChanged(_ sender: UISegmentedControl) { // it is either 0 or 1
        // update current challenge state
        // segemented control has a built in method called selectedSegmentIndex that will access the one that was click.
        // everytime currentChallenge get changed it gets UPDATED in the didSet
        currentChallenge = ChallengeType(rawValue: sender.selectedSegmentIndex) ?? ChallengeType.elevation
        
    }
    
    
}

