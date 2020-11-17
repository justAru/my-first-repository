//
//  ViewController.swift
//  realmProj
//
//  Created by Aru on 11/16/20.
//  Copyright © 2020 Aruzhan Demeubayeva. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var ToDoTableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell", for: indexPath) as? 
        cell.todoText.text = "Here is my text"
        cell.isDoneText.text = "Here is my other text"
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ToDoTableView.delegate = self
        ToDoTableView.dataSource = self
    }
    
    
    
    



}

class todoCell: UITableViewCell{
    
    @IBOutlet weak var isDoneText: UILabel!
    @IBOutlet weak var todoText: UILabel!
}

//    var items = [String]()
//    var cellId = "Cell"
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        view.backgroundColor = .white
//        navigationController?.navigationBar.barTintColor = UIColor(displayP3Red: 21/255, green: 101/255, blue: 192/255, alpha: 1)
//
//        navigationController?.navigationBar.tintColor = .white
//
//        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Добавить", style: .plain, target: self, action: #selector(addItem))
//
//        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
//    }
//
//    @objc func addItem(){
////        addAlertForNewItem()
//    }
//
////    func addAlertForNewItem(){
////        let alert = UIAlertController(title: "Новая задача", message: "Пожалуйста заполните", preferredStyle: .alert)
////        var alertTextField: UITextField!
////        alert.addTextField { textField in alertTextField = textField
////            textField.placeholder = "Новая задача"}
////    }
////
////    let saveAction = UIAlertAction(title: "Сохранить", style: .default) {action in
////        guard let text = alertTextField.text = !text.isEmpty else {return}
////    }
