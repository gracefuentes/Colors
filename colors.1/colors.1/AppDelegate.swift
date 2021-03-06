//
//  AppDelegate.swift
//  colors.1
//
//  Created by Sheyla Astete on 3/22/18.
//  Copyright © 2018 tech innovator. All rights reserved.
//

import UIKit

class ColorsViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    var colors = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]
    
    override func viewDidLoad() {
        super.viewDidLoad()   }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //indexPath.section
        // indexPath.row
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
        cell.textLabel?.text = colors[indexPath.row]
        return cell
    }
    
}
