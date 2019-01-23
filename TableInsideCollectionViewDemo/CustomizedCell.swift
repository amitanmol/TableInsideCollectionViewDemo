//
//  CustomizedCell.swift
//  TableInsideCollectionViewDemo
//
//  Created by Amit Kumar Singh on 23/01/19.
//  Copyright © 2019 Amit Kumar Singh. All rights reserved.
//

import UIKit

class CustomizedCell: UICollectionViewCell {
    
    lazy var tableView: UITableView = {
        let tblView = UITableView()
        tblView.delegate = self
        tblView.dataSource = self
        tblView.translatesAutoresizingMaskIntoConstraints = false
        return tblView
    }()
    
    var ntdlArray = ["Play Video Games", "Eat out", "Watch Netflix"]
    let ntdlCell = "ntdlCell"
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.orange
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: ntdlCell)
        setupTableView()
        
    }
    func setupTableView() {
        
        addSubview(tableView)
        tableView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        //tableView.bottom.constraint(equalTo: bottomAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CustomizedCell: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return ntdlArray.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ntdlCell, for: indexPath)
        
        cell.textLabel?.text = ntdlArray[indexPath.item]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
