//
//  ViewController.swift
//  SimpleTable
//
//  Created by Samuel's macbook on 2018/6/28.
//  Copyright © 2018年 Samuel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var TestNamesAry = ["A","B","C","D","E","F","G","H","I","J","K","L","M",
                        "N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TestNamesAry.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celldentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: celldentifier, for: indexPath)
        
        cell.textLabel?.text = TestNamesAry[indexPath.row]
        cell.imageView?.image = UIImage(named: "picture")
        
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

