//
//  fourthTableViewController.swift
//  SustainableMe
//
//  Created by Isabella Presser on 7/15/20.
//  Copyright © 2020 KWK. All rights reserved.
//

import UIKit

class fourthTableViewController: UITableViewController {
    
    var habits : HabitData!
    
    
    @IBOutlet weak var waterOne: UISwitch!
    
    @IBOutlet weak var commuteTwo: UISwitch!
    
    @IBOutlet weak var purchaseThree: UISwitch!
    
    @IBOutlet weak var washFour: UISwitch!
    
    
    
    @IBAction func doneButtonTapped(_ sender: UIBarButtonItem) {
        
        performSegue(withIdentifier: "segueToList", sender: self)
        
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let secondScreen = segue.destination as? thirdTableViewController
        {
            secondScreen.habits = habits
            
        }
        
        if waterOne.isOn == true {
            habits.habitList.append("Turn off the water when brushing your teeth")
        }
        
    }
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        habits = HabitData()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
