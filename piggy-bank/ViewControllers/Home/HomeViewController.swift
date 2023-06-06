//
//  HomeViewController.swift
//  piggy-bank
//
//  Created by Kieran Hardwick on 27/05/2023.
//

import UIKit

class HomeViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: Main TableView

    @IBOutlet weak var table: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch (indexPath.row) {
        case 1:
            let cell:AccountsTableViewCell = tableView.dequeueReusableCell(withIdentifier: "AccountsTableViewCell", for: indexPath) as! AccountsTableViewCell
            cell.selectionStyle = .none
            return cell
        default:
            let cell:CardTableViewCell = tableView.dequeueReusableCell(withIdentifier: "CardTableViewCell", for: indexPath) as! CardTableViewCell
            cell.selectionStyle = .none
            return cell
        }
    }
    

    // MARK: Initialisation

    override func viewDidLoad() {
        super.viewDidLoad()

        // Register
        self.table.register(UINib.init(nibName: "CardTableViewCell", bundle: .main), forCellReuseIdentifier: "CardTableViewCell")
        self.table.register(AccountsTableViewCell.self, forCellReuseIdentifier: "AccountsTableViewCell")
    }
    

}
