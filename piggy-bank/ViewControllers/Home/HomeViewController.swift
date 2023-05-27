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
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:CardTableViewCell = tableView.dequeueReusableCell(withIdentifier: "CardTableViewCell", for: indexPath) as! CardTableViewCell

        cell.selectionStyle = .none
        return cell
    
        

        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 300
        } else {
            return 150 // Return the height for all other cells
        }
    }

    

    override func viewDidLoad() {
        super.viewDidLoad()


        self.table.register(UINib.init(nibName: "CardTableViewCell", bundle: .main), forCellReuseIdentifier: "CardTableViewCell")
        


 
    }
    

}
