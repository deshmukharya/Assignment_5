//
//  ViewController.swift
//  Alerts
//
//  Created by E5000861 on 27/05/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
 //prime number function
    func prime(){
        print("Prime Numbers are:")
        var count : Int = 0
        for num in 2...30 {
            for i in 2..<num {
                if( num % i == 0){
                    count = count + 1
                }
            }
            if(count == 0){
                print(num)
            }
            count = 0
        }
    }
    
    
    func integer(){
        print("Integers are :")
        
        for num in 1...30{
            print(num)
        }
    }
    //composite number function
    func composite(){
        print("Composite Numbers are")
        var count : Int = 0
        for num in 2...30 {
            for i in 2..<num {
                if( num % i == 0){
                    count = count + 1
                }
            }
            if(count > 0){
                print(num)
            }
            count = 0
        }
    }
    @IBAction func clickbtn(_ sender: UIButton) {
        
        // creating alert controller
        
        let alertController =  UIAlertController(title: "Alert", message: "Choose Number Type", preferredStyle: .alert)
        
        var Action1 = (UIAlertAction(title: "Prime", style: UIAlertAction.Style.destructive, handler: { UIAlertAction in
            self.prime()
        }))
        
        var Action2 = (UIAlertAction(title: "Integer", style: UIAlertAction.Style.default, handler: { UIAlertAction in
            self.integer()
        }))
        var Action3 = (UIAlertAction(title: "Composite", style: UIAlertAction.Style.destructive, handler: { UIAlertAction in
            self.composite()
        }))
        
        alertController.addAction(Action1)
        alertController.addAction(Action2)
        alertController.addAction(Action3)
        
        self.present(alertController, animated: true, completion: nil)
    }
    

}

