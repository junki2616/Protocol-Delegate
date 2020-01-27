//
//  NextViewController.swift
//  protocol
//
//  Created by 西尾純輝 on 2019/12/11.
//  Copyright © 2019 Junki Nishio. All rights reserved.
//

import UIKit

protocol CatchProtocol{
    func catchData(count: Int)
}

class NextViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var count: Int = 0
    
    var delegate:CatchProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func plus(_ sender: Any) {
        
        count += 1
        label.text = String(count)
    }
    
    @IBAction func back(_ sender: Any) {
        
        //デリゲートメソッドを任せたクラスで発動させる
        delegate?.catchData(count: count)
        dismiss(animated:  true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
