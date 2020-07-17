//
//  trialViewController.swift
//  SustainableMe
//
//  Created by Isabella Presser on 7/16/20.
//  Copyright © 2020 KWK. All rights reserved.
//

import UIKit

class trialViewController: UIViewController {
    
    @IBOutlet weak var titleThird: UILabel!
    
    @IBOutlet weak var commuteTwo: UILabel!
    @IBOutlet weak var secondSwitch: UISwitch!
    
    @IBOutlet weak var purchseThird: UILabel!
    @IBOutlet weak var thirdSwitch: UISwitch!
    
    @IBOutlet weak var washFourth: UILabel!
    @IBOutlet weak var fourthSwitch: UISwitch!
    
    @IBOutlet weak var reduceFifth: UILabel!
    @IBOutlet weak var fifthSwitch: UISwitch!
    
    @IBOutlet weak var cookSix: UILabel!
    @IBOutlet weak var sixSwitch: UISwitch!
    
    @IBOutlet weak var carpoolSeven: UILabel!
    @IBOutlet weak var SevenSwitch: UISwitch!
    
    @IBOutlet weak var turnEight: UILabel!
    @IBOutlet weak var eightSwitch: UISwitch!
    
    @IBOutlet weak var useNine: UILabel!
    @IBOutlet weak var nineSwitch: UISwitch!
    
    @IBOutlet weak var bringTen: UILabel!
    @IBOutlet weak var tenSwitch: UISwitch!
    
    @IBOutlet weak var airEleven: UILabel!
    @IBOutlet weak var elevenSwitch: UISwitch!
    
    
    var habits : HabitData!
    
    @IBOutlet weak var oneSwitch: UISwitch!
    
    @IBAction func firstButton(_ sender: UIButton) {
         performSegue(withIdentifier: "segueToList", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if let secondScreen = segue.destination as? thirdTableViewController
           {
               secondScreen.habits = habits
               
           }
           
           if oneSwitch.isOn == true {
               habits.habitList.append("Turn off the water when brushing your teeth")
           }
           
       }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        habits = HabitData()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
