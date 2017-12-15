//
//  ViewController.swift
//  MVC_Checklist
//
//  Created by Adria Ros Saez on 12/14/17.
//  Copyright © 2017 adriaros. All rights reserved.
//

import UIKit

class CheckListViewController: UITableViewController {
    
    var items: [CheckListItem]
    
    required init?(coder aDecoder: NSCoder) { //NSCoder sirve para guardar y recuperar datos del disco
        
        items = [CheckListItem]()
        
        let row0Item = CheckListItem()
        row0Item.text = "item 0"
        row0Item.checked = false
        items.append(row0Item)
        
        let row1Item = CheckListItem()
        row1Item.text = "item 1"
        row1Item.checked = false
        items.append(row1Item)
        
        let row2Item = CheckListItem()
        row2Item.text = "item 2"
        row2Item.checked = false
        items.append(row2Item)
        
        let row3Item = CheckListItem()
        row3Item.text = "item 3"
        row3Item.checked = false
        items.append(row3Item)
        
        let row4Item = CheckListItem()
        row4Item.text = "item 4"
        row4Item.checked = false
        items.append(row4Item)
        
        super.init(coder: aDecoder)
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let cell = tableView.cellForRow(at: indexPath){ //adress of the indexpath (row)
            
            let item = items[indexPath.row]
            item.toggleChecked()

            configureCheckMark(for: cell, with: item)
            
            tableView.deselectRow(at: indexPath, animated: true)
            
        }
        
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView .dequeueReusableCell(withIdentifier: "CheckListItem", for: indexPath)
        let item = items[indexPath.row]

        configureText(for: cell, with: item)
        configureCheckMark(for: cell, with: item)
        
        return cell
    }
    
    func configureText(for cell: UITableViewCell, with item: CheckListItem){
        let label = cell.viewWithTag(1000) as! UILabel
        label.text = item.text

    }
    
    func configureCheckMark(for cell: UITableViewCell, with item: CheckListItem){

        if item.checked {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
    }
    
}

