//
//  ViewController.swift
//  codewchris
//
//  Created by Yasin Ehsan on 10/12/19.
//  Copyright © 2019 Yasin Ehsan. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let ref = Database.database().reference()
        ref.child("someid/andy").setValue(["age":"15", "height":"5'3", "sex":"male"])//dictionary key value
        ref.child("someid/hanna").setValue(["age":12])
        ref.childByAutoId().setValue(["age":"12"])
        
        ref.child("someid").observeSingleEvent(of: .value) { (DataSnapshot) in
            let name = snapshot
        }
        
        
    }
    
    


}

