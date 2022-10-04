//
//  ListaTarefasTableViewController.swift
//  Lista-De-Tarefas
//
//  Created by Horacio Gomes dos Santos Junior on 05/08/22.
//

import UIKit

class ListaTarefasTableViewController: UITableViewController {

    var tarefas: [String] = []
    let userDefaults = TarefaUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func viewDidAppear(_ animated: Bool) {
       atualizar()
    }
    
    func atualizar(){
        tarefas = userDefaults.listar()
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tarefas.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "idCell", for: indexPath)

        // Configure the cell...

        cell.textLabel?.text = tarefas[indexPath.row].description
        
        return cell
    }
    
    
    override  func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
    
    if editingStyle == UITableViewCell.EditingStyle.delete{
        userDefaults.remover(indice: indexPath.row)
        atualizar()
    }
    
    }

}
