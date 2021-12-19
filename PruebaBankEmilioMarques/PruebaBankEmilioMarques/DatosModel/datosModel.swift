//
//  datosModel.swift
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
import SwiftUI

struct User: Codable, Identifiable {
    let id = UUID()
    let date: Date
    let amount: Int?
    let fee: Int?
    let descripcion: String
}
