//
//  LendingDetailViewController.swift
//  SkyFirstApp
//
//  Created by TI Corporativa on 16/05/2019.
//  Copyright © 2019 sky. All rights reserved.
//

import UIKit

class LendingDetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var lending: Lending?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = lending?.name
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
