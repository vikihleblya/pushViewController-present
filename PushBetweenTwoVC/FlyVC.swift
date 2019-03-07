//
//  FlyVC.swift
//  PushBetweenTwoVC
//
//  Created by Victor on 07/03/2019.
//  Copyright © 2019 com.example.LoD. All rights reserved.
//

import UIKit

class FlyVC: UIViewController {
    @IBOutlet var button: UIButton!
    @IBAction func flyTap(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let layer = button.layer
        layer.cornerRadius = 15
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
