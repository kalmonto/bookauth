//
//  ViewController.swift
//  bookauth
//
//  Created by Apple on 14/05/18.
//  Copyright © 2018 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

//
//  SourceViewController.swift
//  Example
//
//  Created by Apple on 11/10/16.
//  Copyright © 2016 Mike. All rights reserved.
//

/*import UIKit

class SourceViewController: UIViewController,UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchview: UISearchBar!
    
    let sourcelang: [String] = ["English","French"]
    let sourcelang_code: [String] = ["en", "fr"]
    
    var search_chaters: [String]?
    let cellReuseIdentifier = "sourcecell"
    var selectedIndex:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        searchview.delegate = self

        // Load Language
        sourcelangload()
        
        // Search array and data array assignee
        search_chaters = sourcelang
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    //MARK: Language Data Load
    
    func sourcelangload() {
        /// Prints available languages.
        SwiftGoogleTranslate.shared.languages { (languages, error) in
            if let languages = languages {
                for language in languages {
                    print(language.language) //  let sourcelang: [String]
                    print(language.name) // let sourcelang_code: [String]
                    print("---")
                }
            }
        }
    }
    
    //MARK: TableViewDelegate functions
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let new_chaters = search_chaters else {
            return 0
        }
        return new_chaters.count
    }
    
    // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // create a new cell if needed or reuse an old one
        let cell:UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as UITableViewCell!
        
        // set the text from the data model
        if let new_chaters = search_chaters {
            let chaters_name = new_chaters[indexPath.row]
            cell.textLabel?.text = chaters_name
            cell.accessibilityHint = sourcelang_code[indexPath.row]
        }
        
        if(indexPath.row == selectedIndex)
        {
            cell.accessoryType = UITableViewCell.AccessoryType.checkmark
        } else {
            cell.accessoryType = UITableViewCell.AccessoryType.none
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
        tableView.deselectRow(at: indexPath, animated: true)
        selectedIndex = indexPath.row;
        
        let cell = tableView.cellForRow(at: indexPath) as! UITableViewCell
        print(cell.textLabel?.text! ?? "null")
        print(cell.accessibilityHint ?? "null")
        
        // Store selected langauge and language code
        UserDefaults.standard.set(cell.textLabel?.text! ?? "null", forKey: "source_language") // saves selected source_language
        UserDefaults.standard.set(cell.accessibilityHint ?? "null", forKey: "source_language_code") // saves selected source_language_code
        UserDefaults.standard.synchronize()

        self.tableView.reloadData()
        
        dismiss(animated: true, completion: nil)

    }
    
    //MARK: TableView Search functions
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        search_chaters = searchText.isEmpty ? sourcelang : sourcelang.filter { $0.contains(searchText) }
        tableView.reloadData()
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchview.resignFirstResponder()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    @IBAction func close_click(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}*/

