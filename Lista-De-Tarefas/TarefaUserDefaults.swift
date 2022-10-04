//
//  TarefaUserDefaults.swift
//  Lista-De-Tarefas
//
//  Created by Horacio Gomes dos Santos Junior on 05/08/22.
//

import UIKit

class TarefaUserDefaults{
    
    let keyTarefas = "keyTarefa"
    var tarefas: [String] = []
    
    func salvar(tarefa: String){
        
        tarefas = listar()
        
        tarefas.append(tarefa)
    
        UserDefaults.standard.set(tarefas, forKey: keyTarefas)
    }
    
    func listar() -> Array<String>{
        
        let dados = UserDefaults.standard.object(forKey: keyTarefas)
        
        if(dados != nil){
            return dados as! Array<String>
        }
        
        return []
        
    }
    
    func remover(indice: Int){
        tarefas = listar()
        tarefas.remove(at: indice)
        UserDefaults.standard.set(tarefas, forKey: keyTarefas)
    }
}
