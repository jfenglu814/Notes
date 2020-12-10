//
//  NoteViewController.swift
//  Notes
//
//  Created by Feng (Jeffrey) Lu on 7/20/20.
//  Copyright © 2020 CS50. All rights reserved.
//

import Foundation
import UIKit

class NoteViewController: UIViewController{
    var note: Note!
    
    @IBOutlet var textView: UITextView!
    
    @IBAction func deleteNote(){
        viewWillDisappear(true)
        
        NoteManager.main.delete(note: note)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.text = note.contents
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        note.contents = textView.text
        NoteManager.main.save(note: note)
    }
}
