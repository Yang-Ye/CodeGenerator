//
//  MainViewController.swift
//  ModelGenerator
//
//  Created by Yang Ye on 10/12/16.
//  Copyright © 2016 YY. All rights reserved.
//

import Cocoa

class MainViewController: NSViewController, NSWindowDelegate {
    @IBOutlet var classNameTextField: NSTextField!
    @IBOutlet var authorTextField: NSTextField!
    @IBOutlet var generateButton: NSButton!
    @IBOutlet var inputTextField: NSTextView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    override func awakeFromNib() {
        
    }
    @IBAction func generateButtonAction(_ sender: AnyObject) {
        guard let jsonString = inputTextField.string else {
            return
        }
        if let dict = parseJSON(inputString: jsonString) {
            if let dict = dict as? Dictionary<String, AnyObject> {
                print(dict)
            }
        } else {
            displayAlertW(text: "Parse error, input is not a valid JSON")
        }
    }

    func displayAlertW(text: String) {
        let alert = NSAlert.init()
        alert.addButton(withTitle: "OK")
        alert.messageText = text
        alert.alertStyle = .warning
        alert.runModal()
    }

    func parseJSON(inputString: String?) -> Any? {
        if let data = inputString?.data(using: String.Encoding.ascii) {
            if let result = try? JSONSerialization.jsonObject(with: data, options: []) {
                print(result)
            }
        }
        return nil
    }

    func traverseDictionary(dict:[String: AnyObject]) {
        
    }
}

