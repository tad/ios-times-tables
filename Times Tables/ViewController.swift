//
//  ViewController.swift
//  Times Tables
//
//  Created by Terry Donaghe on 10/1/16.
//  Copyright © 2016 Donaghe. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var slider: UISlider!
    var tableBase = 0
    
    @IBOutlet weak var tblView: UITableView!
    
    @IBAction func sliderChanged(_ sender: AnyObject) {
        
        tableBase = Int(slider.value * 19) + 1
        tblView.reloadData()
    }
    
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20;
    }
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell");
        
        cell.textLabel?.text = String((indexPath.row + 1) * tableBase)
        
        return cell;
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        slider.value = 0
        tableBase = Int(slider.value * 19) + 1
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

