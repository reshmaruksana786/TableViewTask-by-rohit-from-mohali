//
//  CountTableViewCell.swift
//  TableViewTask
//
//  Created by apple on 08/01/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class CountTableViewCell: UITableViewCell {

    @IBOutlet weak var countLbl: UILabel!
    var count = 0
    
    @IBAction func plusActionBtn(_ sender: Any) {
        
        for i in 0...1
        {
            countLbl.text = String(count)
            count += i
        }
         
    }
    
    @IBAction func decActionBtn(_ sender: Any) {

        for i in 0...1
        {
            count -= i
            countLbl.text = String(count)
            
        }
    }
    
    @IBAction func printActionBtn(_ sender: Any) {
        
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
