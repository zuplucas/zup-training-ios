//
//  LendingDetailViewController.swift
//  SkyFirstApp
//
//  Created by TI Corporativa on 16/05/2019.
//  Copyright © 2019 sky. All rights reserved.
//

import UIKit

class LendingDetailViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var objectTextField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    var lending: Lending?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        fill(lending)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func fill(_ lending: Lending?) {
        guard let l = lending else { return }
        nameTextField.text = l.name
        objectTextField.text = l.object
        datePicker.setDate(l.date, animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func onTouchSave(_ sender: Any) {
        guard let name = nameTextField.text,
            !name.isEmpty,
            let object = objectTextField.text,
            !object.isEmpty
            else { return }
        
        let newValue = Lending(name: name, object: object, date: datePicker.date)
        
        LendingService.instance.lendings.removeAll(where: { $0.hashValue == lending!.hashValue})
        LendingService.instance.lendings.append(newValue)
        
        lending = newValue
        
        navigationController?.popViewController(animated: true)
    }
    
}
