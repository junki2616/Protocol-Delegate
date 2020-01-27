//
//  ViewController.swift
//  protocol
//
//  Created by 西尾純輝 on 2019/12/11.
//  Copyright © 2019 Junki Nishio. All rights reserved.
//

import UIKit

class ViewController: UIViewController,   CatchProtocol {
    
    @IBOutlet weak var label: UILabel!
    
    var count = Int()
    
    func catchData(count: Int) {
        label.text = String(count)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func next(_ sender: Any) {
        
        performSegue(withIdentifier: "next", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nextVC = segue.destination as! NextViewController
        nextVC.delegate = self
    }
    
}

