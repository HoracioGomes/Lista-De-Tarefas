//
//  CadastroViewController.swift
//  Lista-De-Tarefas
//
//  Created by Horacio Gomes dos Santos Junior on 05/08/22.
//

import UIKit

class CadastroViewController: UIViewController {
    @IBOutlet weak var tvTarefa: UITextField!
    @IBAction func btnAdicionar(_ sender: Any) {
        
    let tarefaUserDefaults = TarefaUserDefaults()
        if let tarefa = tvTarefa.text{
            tarefaUserDefaults.salvar(tarefa: tarefa)
            tvTarefa.text?.removeAll()
            
            let dados = tarefaUserDefaults.listar()
            print(dados)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
