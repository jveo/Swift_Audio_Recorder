//
//  SelectGenreTableViewController.swift
//  Audio_Video_Project33
//
//  Created by Jesse viau on 2023-10-09.
//

import UIKit

class SelectGenreTableViewController: UITableViewController {
    
    //MARK: Properties
    static var genres = ["Unknown", "Blues", "Classical", "Electronic", "Jazz", "Metal", "Pop", "Reggae", "RnB", "Rock", "Soul"]


    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Select genre"
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Genre", style: .plain, target: nil, action: nil)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }

    //MARK: Objc Functions
    @objc func nextTapped() {
        let vc = SelectGenreTableViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    

    // MARK: TableView Functions
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return SelectGenreTableViewController.genres.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = SelectGenreTableViewController.genres[indexPath.row]
        cell.accessoryType = .disclosureIndicator
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            let genre = cell.textLabel?.text ?? SelectGenreTableViewController.genres[0]
            let vc = AddCommentsViewController()
            vc.genre = genre
            navigationController?.pushViewController(vc, animated: true)
        }
    }


}
