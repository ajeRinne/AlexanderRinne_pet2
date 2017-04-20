//
//  SecondViewController.swift
//  Alexander Rinne_pset2
//
//  Created by Alexander Rinne on 15-04-17.
//  Copyright © 2017 Alexander Rinne. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    
    
    var story: Story?
    var storyName: String?
    
    
    @IBOutlet weak var wordCount: UITextView!
    @IBOutlet weak var wordInput: UITextField!
    @IBOutlet weak var pleaseType: UILabel!
    
    @IBAction func okButton(_ sender: Any) {
    
        if wordInput.text!.isEmpty {
            wordInput.placeholder = "You didn't fill in a word."
        }
        else{
            
            story?.fillInPlaceholder(word: wordInput.text!)
            wordInput.text = nil
            
            let placeholderCount : Int = story!.getPlaceholderRemainingCount()
            let count = String(placeholderCount)
            wordCount.text = count + " words left."
            
            pleaseType.text = "please type a(n)'" + story!.getNextPlaceholder() + "'."
            
            if story!.isFilledIn() {
                performSegue(withIdentifier: "Complete", sender: self)
            }

        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        if let path = Bundle.main.path(forResource: storyName, ofType: "txt") {
            do {
                let contents = try String(contentsOfFile: path)
                story = Story(stream: contents)
            } catch {
                print("Contents couldn't be opened.")
            }
        } else {
            print("File couldn't be found.")
        }
        
        let placeholderCount : Int = story!.getPlaceholderRemainingCount()
        let count = String(placeholderCount)
        wordCount.text = count + " words left."
        
        pleaseType.text = "please type a(n)'" + story!.getNextPlaceholder() + "'."
        
        // Do any additional setup after loading the view.
    }
    
    // send the text to the next view
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? ThirdViewController {
            let stringStory: String = story!.toString()
            viewController.finalStory = stringStory
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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


