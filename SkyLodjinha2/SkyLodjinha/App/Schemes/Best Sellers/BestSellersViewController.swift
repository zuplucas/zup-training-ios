//
//  BestSellersViewController.swift
//  SkyLodjinha
//
//  Created by TI Corporativa on 23/05/19.
//  Copyright © 2019 TI Corporativa. All rights reserved.
//

import UIKit

class BestSellersViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
        // Do any additional setup after loading the view.
    }
    
    private func registerCell() {
        let cellNib = UINib(nibName: BestSellersTableViewCell.cellIdentifier, bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: BestSellersTableViewCell.cellIdentifier)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension BestSellersViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: BestSellersTableViewCell.cellIdentifier, for: indexPath)
        
        guard let bestSellersCell = cell as? BestSellersTableViewCell else { return UITableViewCell() }
        bestSellersCell.priceLabel.text = "R$ 20,00"
        return bestSellersCell
    }
    
    
}

extension BestSellersViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Mais vendidos"
    }
}
