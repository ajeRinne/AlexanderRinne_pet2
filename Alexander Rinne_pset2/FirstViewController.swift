//
//  FirstViewController.swift
//  Alexander Rinne_pset2
//
//  Created by Alexander Rinne on 18-04-17.
//  Copyright © 2017 Alexander Rinne. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "waySimple") {
            let viewController = segue.destination as! SecondViewController
            viewController.storyName = "madlib0_simple"
        } else if (segue.identifier == "wayTarzan") {
            let viewController = segue.destination as! SecondViewController
            viewController.storyName = "madlib1_tarzan"
        } else if (segue.identifier == "wayUniversity") {
            
            let viewController = segue.destination as! SecondViewController
            viewController.storyName = "madlib2_university"
        } else if(segue.identifier == "wayClothes") {
            let viewController = segue.destination as! SecondViewController
            viewController.storyName = "madlib3_clothes"
        } else if (segue.identifier == "wayDance") {
            let viewController = segue.destination as! SecondViewController       
            viewController.storyName = "madlib4_dance"
        }
    }



}
