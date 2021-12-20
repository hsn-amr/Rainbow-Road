//
//  ViewController.swift
//  Rainbow Road
//
//  Created by administrator on 06/12/2021.
//

import UIKit

class ViewController: UIViewController {

    let colors = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green, UIColor.blue, UIColor.purple]
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        colors.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CTableViewCell
        cell.colorView.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    
    
}
