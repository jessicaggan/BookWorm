//
//  TableViewController.swift
//  Bookworm
//
//  Created by Jessica Geofanie on 27/04/22.
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let control = ["My Books", "Finished Reading", "Virtual Shelf"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 600
    }
}

extension TableViewController:UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("tapped")
        print(indexPath.row)
        if(indexPath.row == 0) {
            print("go to My Books")
            performSegue(withIdentifier: "MyBooks", sender: self)
        }
        if(indexPath.row == 1) {
            print("go to Finished Reading")
            performSegue(withIdentifier: "FinishedReading", sender: self)
        }
        if(indexPath.row == 2) {
            print("go to Virtual Shelf")
            performSegue(withIdentifier: "VirtualShelf", sender: self)
        }
    }
}

extension TableViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return control.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = control[indexPath.row]
        return cell
    }
    
}
