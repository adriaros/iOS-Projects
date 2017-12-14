//
//  ViewController.swift
//  MVC_Checklist
//
//  Created by Adria Ros Saez on 12/14/17.
//  Copyright © 2017 adriaros. All rights reserved.
//

import UIKit

class CheckListViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let cell = tableView.cellForRow(at: indexPath){ //adress of the indexpath (row)
            
            if cell.accessoryType == .none{
                cell.accessoryType = .checkmark
            } else {
                cell.accessoryType = .none
            }
            
            tableView.deselectRow(at: indexPath, animated: true)
            
        }
        
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView .dequeueReusableCell(withIdentifier: "CheckListItem", for: indexPath)
        
        let label = cell.viewWithTag(1000) as! UILabel
        
        if indexPath.row % 5 == 0 {
            label.text = "Run a marathon"
        } else if indexPath.row % 5 == 1{
            label.text = "Sleep"
        }else {
            label.text = "Run a km"
        }
        
        return cell
    }
    
}

