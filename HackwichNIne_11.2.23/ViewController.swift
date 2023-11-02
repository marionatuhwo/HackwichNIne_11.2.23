//
//  ViewController.swift
//  HackwichNIne_11.2.23
//
//  Created by Marion Ano on 11/2/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var candyArray = ["Reese's Peanut Butter Cups - Pumpkin", "Snickers Candy Bar", "Kit Kat Chocolate Wafer", "Twix"]
        
        var ratingsArray = ["⭐️⭐️⭐️⭐️⭐️", "⭐️⭐️⭐️⭐️⭐️", "⭐️⭐️⭐️⭐️", "⭐️⭐️⭐️"]

        //Part 8
        var categoryOneImagesData = [String]()
        
        override func viewDidLoad()
            {
                super.viewDidLoad()
                //Part 8
                let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
                let dict = NSDictionary(contentsOfFile: path!)
                categoryOneImagesData = dict!.object(forKey:"CategoryOneImages") as! [String]
            }
        
            
            @IBOutlet weak var tableView: UITableView!
            
            func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
            {
                return candyArray.count
            }
            
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->   UITableViewCell
    {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
                let text = candyArray[indexPath.row]
                cell.detailTextLabel?.text = ratingsArray[indexPath.row]
                cell.textLabel?.text = text
                return cell
            }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
            {
                tableView.deselectRow(at: indexPath, animated: true)
            }

        //Part 9
        
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "mySegue"
            {
                let s1 = segue.destination as! secondTabDetailViewController
                let imageIndex = tableView.indexPathForSelectedRow?.row
                s1.imagePass = categoryOneImagesData[imageIndex!]
            }
        }

    }


