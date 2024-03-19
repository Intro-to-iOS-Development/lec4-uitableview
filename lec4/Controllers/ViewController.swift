//
//  ViewController.swift
//  lec4
//
//  Created by Vin Bui on 6/7/23.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties (view)
    
    // MARK: - Properties (data)
    
    private var birds: [Bird] = [
        Bird(name: "Alden", image: "alden"),
        Bird(name: "Antoinette", image: "antoinette"),
        Bird(name: "Elvis", image: "elvis"),
        Bird(name: "Han", image: "han"),
        Bird(name: "Jennifer", image: "jennifer"),
        Bird(name: "Justin", image: "justin"),
        Bird(name: "Reade", image: "reade"),
        Bird(name: "Richie", image: "richie"),
        Bird(name: "Tiffany", image: "tiffany"),
        Bird(name: "Vin", image: "vin"),
        Bird(name: "Vivian", image: "vivian")
    ]

    // MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Birds"
        view.backgroundColor = UIColor.white
    }
    
    // MARK: - Set Up Views

}

// MARK: - UITableView Delegate


// MARK: - UITableView DataSource
