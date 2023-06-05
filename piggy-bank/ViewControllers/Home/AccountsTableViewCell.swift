//  AccountsTableViewCell.swift

import UIKit

class AccountsTableViewCell: UITableViewCell, UITableViewDelegate, UITableViewDataSource {

    // MARK: Declarations
    var table: UITableView!
    var stackView: UIStackView!
    var label: UILabel!
    
    // For dynamic table view height
    var tableHeightConstraint: NSLayoutConstraint?
    let rowHeight: CGFloat = 44  // Set to row height
    
    // MARK: Table View
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Single Cell"
        cell.backgroundColor = .clear
        cell.textLabel?.textColor = .white
        return cell
    }
    
    func configTable() {
        // Setup table view
        table = UITableView(frame: .zero, style: .plain)
        table.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(table)
        
        // Calculate table view height based on number of rows
        let tableHeight = CGFloat(tableView(table, numberOfRowsInSection: 0)) * rowHeight
        
        // Setup table view height constraint
        tableHeightConstraint = table.heightAnchor.constraint(equalToConstant: tableHeight)
        tableHeightConstraint?.isActive = true
        
        NSLayoutConstraint.activate([
            table.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 20),
            table.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -20),
            table.topAnchor.constraint(equalTo: self.stackView.bottomAnchor, constant: 20),
            table.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor)
        ])
        
        // Configure table view
        table.dataSource = self
        table.delegate = self
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        table.rowHeight = rowHeight
        table.estimatedRowHeight = rowHeight
        table.backgroundColor = DarkTheme.containerColor
        table.separatorColor = .clear
        table.layer.cornerRadius = 10
    }

    func configStackView() {
        // Setup stack view
        stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(stackView)

        // Setup label within the stack view
        label = UILabel()
        label.text = "Accounts"
        label.textColor = .white
        stackView.addArrangedSubview(label)
        
        // Constraints
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -20),
            stackView.topAnchor.constraint(equalTo: self.contentView.topAnchor),
        ])
    }

    // MARK: Setup
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
      
        self.backgroundColor = .clear
        configStackView()
        configTable()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
