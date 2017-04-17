//
//  SecondViewController.swift
//  Alexander Rinne_pset2
//
//  Created by Alexander Rinne on 15-04-17.
//  Copyright © 2017 Alexander Rinne. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    func readTextFile(){
        
        let path = Bundle.main.path(forResource: "madlib0-simple", ofType: "txt")
        print(path!)
        
        let filemgr = FileManager.default
        if filemgr.fileExists(atPath: path!){
            do {
                let fullText = try String(contentsOfFile: "", encoding: String.Encoding.utf8)
                print(fullText)
                
            }catch let error as NSError{
                print("Error \(error)")
            }
        }

        
    }
//    var classStory = Story()

    @IBOutlet weak var OkButton: UIButton!
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

}
