//
//  ColorsViewController.swift
//  colors.1
//
//  Created by Sheyla Astete on 3/22/18.
//  Copyright © 2018 tech innovator. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    //var colors = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]
    var colors = [color(name: "red", uiColor:UIColor.red),
                  color(name: "orange", uiColor:UIColor.orange),
                  color(name: "yellow", uiColor:UIColor.yellow),
                  color(name: "green", uiColor:UIColor.green),
                  color(name: "blue", uiColor:UIColor.blue),
                  color(name: "purple", uiColor:UIColor.purple),
                  color(name: "brown", uiColor:UIColor.brown)]
                  
                  ]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

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
        let color = colors[indexPath.row]
        
        cell.textLabel?.text = colors[indexPath.row].name
        cell.backgroundColor = colors[indexPath.row].uiColor
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
