//
//  ConversationsController.swift
//  iOS-Firebase-Chat
//
//  Created by Y u l i a on 31.07.2020.
//  Copyright © 2020 Yulia. All rights reserved.
//

import UIKit

class ConversationsController: UIViewController {
    
    // MARK: - Properties
    private let tableView = UITableView()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        configureTableView()
    }
    
    // MARK: - Selectors
    @objc func showProfile() {

    }
    
    // MARK: - Helpers
    

    
    func configureUI() {
        view.backgroundColor = .white
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.backgroundColor = .systemIndigo
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        navigationController?.navigationBar.prefersLargeTitles = true
        
        navigationItem.title = "Messages"
        
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.isTranslucent = true
        
        let image = UIImage(systemName: "person.circle.fill")
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: image, style: UIBarButtonItem.Style.plain, target: self, action: #selector(showProfile))
    }
    
    func configureTableView() {
        tableView.backgroundColor = .white
        view.addSubview(tableView)
        tableView.frame = view.frame
        
        tableView.tableFooterView = UIView()
        
        tableView.rowHeight = 80
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "ConversationCell")
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}

extension ConversationsController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ConversationCell", for: indexPath)
        cell.textLabel?.text = "Some text"
        return cell
        
    }
    
    
}

extension ConversationsController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
