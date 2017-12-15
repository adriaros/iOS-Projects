//
//  CheckListItem.swift
//  MVC_Checklist
//
//  Created by Adria Ros Saez on 12/15/17.
//  Copyright © 2017 adriaros. All rights reserved.
//

import Foundation

class CheckListItem {
    
    var text = ""
    var checked = false
    
    func toggleChecked(){
        checked = !checked
    }
}
