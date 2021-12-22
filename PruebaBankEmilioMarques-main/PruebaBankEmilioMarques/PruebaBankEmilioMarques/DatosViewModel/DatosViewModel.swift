//
//  DatosViewModel.swift
//  PruebaBankEmilioMarques
//
//  Created by Emilio Marques on 19/12/21.
//


/*
 Aquí esta los datos y parametros
 del modelo
 de los archivos JSON y la Classe que pide infromacíon al archivo para
 mopstrar los datos en una lista.
 */

import Foundation
import Network
import CFNetwork


class apiCall {
    func getUsers(completion:@escaping ([User]) -> ()) {
        guard let url = URL(string: "https://code-challenge-e9f47.web.app/transactions.json") else { return }
        URLSession.shared.dataTask(with: url) { (Data, _, _) in
            do {
            
                URLSession.shared.dataTask(with: url) { data, response, error in
                    guard let data = data, error == nil else {
                        print(error ?? "Unknown error")
                        return
                    }

                    do {
                        let user = try JSONDecoder().decode([User].self, from: data)
                        DispatchQueue.main.async {
                            apiCall()
                        }
                    } catch let error {
                        print(error)
                    }
                }.resume()
            }
        }
    }
}
