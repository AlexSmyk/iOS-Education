//
//  ViewController.swift
//  CoreDataEdu
//
//  Created by Алекс Смык on 20.06.22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    var dataStorageManager = DataStoreManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let user = dataStorageManager.obtainMainUser()
        
        nameLabel.text = user.name! + " " + (user.company?.name ?? "")
        ageLabel.text = String(user.age)
        
        nameLabel.sizeToFit()
        ageLabel.sizeToFit()
        
        textField.delegate = self
        
        textField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
    }
    @objc
    func textFieldDidChange() {
        print("\(textField.text)")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        guard let name = textField.text else { return }
        dataStorageManager.updateMainUser(with: name)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    @IBAction func removeDidPressed(_ sender: Any) {
        dataStorageManager.removeMainUser()
    }
}

