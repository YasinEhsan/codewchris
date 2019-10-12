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
    @IBOutlet weak var textView: UITextView!
    
    let ref = Database.database().reference()
    var databaseHandle:DatabaseHandle?
    var postData = [String]()
    var display: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        databaseHandle = ref.observe(.childAdded) { (snapshot) in
            
            let post = snapshot.value as? String
            
            if let actualPost = post {
                
                self.postData.append(actualPost)
                
                let store:String  = self.textView.text
                
                self.display = store + "\n" + actualPost
                
                self.textView.text = self.display
                
                
                
                
            }
            
            
            
        }
    
        
//        ref.child("someid/andy").setValue(["age":"15", "height":"5'3", "sex":"male"])//dictionary key value
//        ref.child("someid/hanna").setValue(["age":"12", "height":"4'3", "sex":"female"])
//        ref.childByAutoId().setValue(["age":"12"])
        
//        ref.child("someid/andy/age").observeSingleEvent(of: .value) { (snapshot) in
//            let name = snapshot.value as? String
//            print(name)
//        }
//        ref.child("someid/andy").observeSingleEvent(of: .value, with: { (snapshot) in
//            let andyData = snapshot.value as? [String:Any]
//            print(andyData)
//        }) { (Error) in
//
//        }
        
        
        
        
        
        
    }
    
    
//    func observeNames(){
//        let postRef = Database.database().reference().child("someid")
//
//        postRef.observe(.value, with: { snapshot in
//            var tempNames = [String:Any]()
//
//            for child in snapshot.children {
//                if let dict = child as? [String:Any]
//                    let age = dict[""] as? String
//
//            }
//        })
//
//
//
//    }
//
    


}

