//
//  ColorsViewController.swift
//  colors
//
//  Created by Sheyla Astete on 3/14/18.
//  Copyright © 2018 tech innovator. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var ColorsTableView: UITableView!
    var colors = ["red","orange","yellow","green","blue","purple","brown"]
    override func viewDidLoad() {
        super.viewDidLoad()
ColorsTableView.dataSource = self
        ColorsTableView.delegate = self
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorsCell", for: indexPath)
        cell.textLabel?.text = colors[indexPath.row]
        //cell.backgroundColor = UIcolor.orange
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
