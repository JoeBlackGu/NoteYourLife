//
//  NoteViewController.swift
//  NoteYourLife
//
//  Created by Joe on 28/02/2017.
//  Copyright © 2017 Joe. All rights reserved.
//

import UIKit

class NoteViewController: UIViewController {
    
    var text = "This is some **bold** text."
    var editor: Notepad!

    override func viewDidLoad() {
        super.viewDidLoad()

        editor = Notepad(self.view.bounds, themeFile: "one-light")
        editor.text = text
        
        editor.textContainerInset = UIEdgeInsetsMake(40, 20, 40, 20)
        self.view.addSubview(editor)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func save(_ sender: UIBarButtonItem) {
        
        print("\(editor.text)")
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
