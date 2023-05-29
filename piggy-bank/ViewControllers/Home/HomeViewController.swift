//
//  HomeViewController.swift
//  piggy-bank
//
//  Created by Kieran Hardwick on 27/05/2023.
//

import UIKit

class HomeViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: Table

    @IBOutlet weak var table: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch (indexPath.row) {
        case 0:
            let cell:CardTableViewCell = tableView.dequeueReusableCell(withIdentifier: "CardTableViewCell", for: indexPath) as! CardTableViewCell
            cell.selectionStyle = .none
            return cell
        case 1:
            let cell:AccountsTableViewCell = tableView.dequeueReusableCell(withIdentifier: "AccountsTableViewCell", for: indexPath) as! AccountsTableViewCell
            return cell
        default:
            let cell:CardTableViewCell = tableView.dequeueReusableCell(withIdentifier: "CardTableViewCell", for: indexPath) as! CardTableViewCell
            cell.selectionStyle = .none
            return cell
            
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch (indexPath.row) {
        case 0:
            return 250
        default:
            return 300
        }
    }

    

    override func viewDidLoad() {
        super.viewDidLoad()


        // Register nibs
        self.table.register(UINib.init(nibName: "CardTableViewCell", bundle: .main), forCellReuseIdentifier: "CardTableViewCell")
        self.table.register(UINib.init(nibName: "AccountsTableViewCell", bundle: .main), forCellReuseIdentifier: "AccountsTableViewCell")
    }
    

}
