//
//  ViewController.swift
//  ScrollingForm
//
//  Created by Eduardo Carrillo on 11/6/18.
//  Copyright © 2018 Eduardo Carrillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ScrollViewOutlet: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        registerForKeyboardNotifications()
    }

    func registerForKeyboardNotifications (){
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWasShown(_:)), name: .UIResponder.keyboardDidShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillBeHidden(_:)), name: .UIKeyboardWillHide, object: nil)
    }
    @objc func keyboardWasShown(_ notification: NSNotification){
        guard let info = notification.userInfo, let keyboardFrameValue = info[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue else {return}
        let keyboardFrame = keyboardFrameValue.cgRectValue
        let keyboardSize = keyboardFrame.size
        
        let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: keyboardSize.height, right: 0.0)
        ScrollViewOutlet.contentInset = contentInsets
        ScrollViewOutlet.scrollIndicatorInsets = contentInsets
    }
    
    @objc func keyboardWillBeHidden(_notification: NSNotification){
        let contentInsets = UIEdgeInsets.zero
        ScrollViewOutlet.contentInset = contentInsets
        ScrollViewOutlet.scrollIndicatorInsets = contentInsets
    }

}

