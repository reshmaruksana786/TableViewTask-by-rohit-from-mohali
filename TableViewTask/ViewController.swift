//
//  ViewController.swift
//  TableViewTask
//
//  Created by apple on 08/01/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
  
    
    @IBOutlet weak var printCountLbl: UILabel!
    
    
    @IBOutlet weak var tblTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var customXIB = UINib(nibName: "CountTableViewCell", bundle: nil)
        tblTableView.register(customXIB, forCellReuseIdentifier: "xibcell")
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return 100
      }
      
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblTableView.dequeueReusableCell(withIdentifier: "xibcell", for: indexPath) as! CountTableViewCell
        
        return cell
    }


}

