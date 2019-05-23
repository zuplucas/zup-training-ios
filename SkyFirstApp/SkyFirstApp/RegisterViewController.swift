//
//  ViewController.swift
//  SkyFirstApp
//
//  Created by TI Corporativa on 14/05/19.
//  Copyright © 2019 sky. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var frmView: UIView!
    @IBOutlet weak var objectTextField: UITextField!
    @IBOutlet weak var friendTextField: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var datePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupStyle()
    }
    
    private func setupStyle() {
        saveButton.layer.cornerRadius = 10
        frmView.layer.cornerRadius = 5
    }
    
    private func clearForm() {
        friendTextField.text = ""
        objectTextField.text = ""
        datePicker.setDate(Date(), animated: true)
    }
    
    @IBAction func onSaveTouchInside(_ sender: UIButton) {
        print("touched on salvar")
        guard let name = friendTextField.text,
            !name.isEmpty,
            let object = objectTextField.text,
            !object.isEmpty
            else { return }
        
        let lending = Lending(name: name, object: object, date: datePicker.date)
        LendingService.instance.lendings.append(lending)
        
        clearForm()
    }
}

