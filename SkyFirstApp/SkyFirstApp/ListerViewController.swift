//
//  ListerViewController.swift
//  SkyFirstApp
//
//  Created by user155531 on 5/15/19.
//  Copyright © 2019 sky. All rights reserved.
//

import UIKit

class ListerViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var lendings: [Lending] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupStyle()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear( _ animated: Bool) {
        super.viewDidAppear(animated)
        setupValues()
    }
    
    private func setupValues() {
        lendings = LendingService.instance.lendings.sorted().reversed()
    }

    private func setupStyle() {
        tableView.tableFooterView = UIView()
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "showLendingDetail", let lending = sender as? Lending {
           let viewController = segue.destination as? LendingDetailViewController
            viewController?.lending = lending
        }
    }
    

}

extension ListerViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lendings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "lendingCell", for: indexPath)
        let lending = lendings[indexPath.row]
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .none
        cell.textLabel?.text = lending.name
        cell.detailTextLabel?.text = lending.object + " - " + dateFormatter.string(from: lending.date)
        return cell
    }
    
    
}


extension ListerViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let lending = lendings[indexPath.row]
        performSegue(withIdentifier: "showLendingDetail", sender: lending)
    }
}
