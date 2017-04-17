//
//  ThirdViewController.swift
//  Alexander Rinne_pset2
//
//  Created by Alexander Rinne on 16-04-17.
//  Copyright © 2017 Alexander Rinne. All rights reserved.
//

import UIKit

//var objStory = Story(stream: <#String#>)



class ThirdViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let secondVC = segue.destination as? ThirdViewController {
            
//            objStory.read(stream: String)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
