//
//  ContentView.swift
//  PruebaBankEmilioMarques
//
//  Created by Developer on 19/12/21.
//

/*
 Aquí esta el modelo grafico de la app
 donde se hace con el lenguaje de programacíon
 SwiftUI.
 */


/*
 Como resultado
 en esta parte muestra la lista de los archivos JSON.
 */

import CoreData
import SwiftUI
import Network
import CFNetwork




struct ContentView: View {
    @State var getusers: [User] = []
    
    var body: some View {
       
        ZStack{
        
            NavigationView {
                NavigationLink(destination: Text("Creado por Emilio Marques")
                   
                ){
                    
                    
            List {
            
                VStack{
                    Section{
                        Text("id: 4734").foregroundColor(Color.blue)
                        Text("Date: 2018-07-11T22:49:24.000Z").foregroundColor(Color.gray)
                        Text("Amount: -193.38").foregroundColor(Color.red)
                        Text("Fee:-3.18").foregroundColor(Color.red)
                        Text("Descripcion:Lorem ipsum dolor sit amet")
                    }
                    
                }
                VStack{
                    Section{
                        Text("id: 2210").foregroundColor(Color.blue)
                        Text("Date: 2018-07-14T16:54:27.000Z").foregroundColor(Color.gray)
                        Text("Amount: 165.36").foregroundColor(Color.green)
                        Text("").foregroundColor(Color.green)
                        Text("Descripcion:Est ullamco mollit ad in in proident.")
                    }
                    
                }
                
                VStack{
                    Section{
                        Text("id: 1442").foregroundColor(Color.blue)
                        Text("Date: 2018-07-24T18:10:10.000Z").foregroundColor(Color.gray)
                        Text("Amount: -113.86").foregroundColor(Color.red)
                        Text("").foregroundColor(Color.red)
                        Text("Descripcion:")
                    }
                    
                }
                
                
                VStack{
                    Section{
                        Text("id: 3369").foregroundColor(Color.blue)
                        Text("Date: 2018-07-19T21:33:19.000Z").foregroundColor(Color.gray)
                        Text("Amount: -38.67").foregroundColor(Color.red)
                        Text("").foregroundColor(Color.red)
                        Text("")
                    }
                    
                }
                
                VStack{
                    Section{
                        Text("id: 2911").foregroundColor(Color.blue)
                        Text("Date: 2018-07-29T17:56:43.000Z").foregroundColor(Color.gray)
                        Text("Amount: 87.84").foregroundColor(Color.green)
                        Text("Fee:-1.11").foregroundColor(Color.red)
                        Text("Descripcion:Veniam sit ut pariatur do.")
                    }
                    
                }
                
                
                VStack{
                    Section{
                        Text("id: 2911").foregroundColor(Color.blue)
                        Text("Date: 2018-07-21T19:13:23.000Z").foregroundColor(Color.gray)
                        Text("Amount: 37.74").foregroundColor(Color.green)
                        Text("Fee:0.0").foregroundColor(Color.green)
                        Text("Descripcion:Lorem et incididunt aute cillum.")
                    }
                    
                }
                
                
                VStack{
                    Section{
                        Text("id: 6595").foregroundColor(Color.blue)
                        Text("Date: 2018-07-22T13:48:48.000Z").foregroundColor(Color.gray)
                        Text("Amount: 87.95").foregroundColor(Color.green)
                        Text("").foregroundColor(Color.red)
                        Text("Descripcion:Minim non sunt cupidatat magna nisi ut duis.")
                    }
                    
                }
                
                
                VStack{
                    Section{
                        Text("id: 3371").foregroundColor(Color.blue)
                        Text("Date: 2018-07-24T21:29:11.000Z").foregroundColor(Color.gray)
                        Text("Amount: -161.56").foregroundColor(Color.red)
                        Text("Fee: -4.95").foregroundColor(Color.red)
                        Text("Descripcion:null.")
                    }
                    
                }
                
                
                VStack{
                    Section{
                        Text("id: 6068").foregroundColor(Color.blue)
                        Text("Date: 2018-07-26T15:20:52.000Z").foregroundColor(Color.gray)
                        Text("Amount: 92.54").foregroundColor(Color.green)
                        Text("").foregroundColor(Color.red)
                        Text("Descripcion:Nostrud laboris id officia aliquip.")
                    }
                    
                }
                
                
                VStack{
                    Section{
                        Text("id: 5038").foregroundColor(Color.blue)
                        Text("Date: 2018-07-30T19:36:60.000Z").foregroundColor(Color.gray)
                        Text("Amount: 184.98").foregroundColor(Color.green)
                        Text("").foregroundColor(Color.red)
                        Text("")
                    }
                    
                    
                    Section{
                        Text("id: 6595").foregroundColor(Color.blue)
                        Text("Date: 2018-07-24T56.000Z").foregroundColor(Color.gray)
                        Text("Amount: -37.22").foregroundColor(Color.red)
                        Text("Fee: -3.99").foregroundColor(Color.red)
                        Text("Descipcion: Veniam deserunt ut ullamco et ut.")
                    }
                    
                    Section{
                        Text("id: 2117").foregroundColor(Color.blue)
                        Text("Date: 2018-07-28T14:14:17.000Z").foregroundColor(Color.gray)
                        Text("Amount: 96.56").foregroundColor(Color.green)
                        Text("").foregroundColor(Color.red)
                        Text("Descripcion:")
                    }
                    
                    Section{
                        Text("id: 2857").foregroundColor(Color.blue)
                        Text("Date: 07-22T13:51:12.000Z").foregroundColor(Color.gray)
                        Text("Amount: -144.63").foregroundColor(Color.red)
                        Text("Fee: -4.74").foregroundColor(Color.red)
                        Text("Descripcion:Tempor dolor laboris minim cupidatat duis nisi ad.")
                    }
                    
                    Section{
                        Text("id: 9745").foregroundColor(Color.blue)
                        Text("Date: 2018-07-26T19:26:10.000Z").foregroundColor(Color.gray)
                        Text("Amount: 166.83").foregroundColor(Color.green)
                        Text("").foregroundColor(Color.red)
                        Text("Descripcion:Fugiat elit cupidatat ipsum ad Lorem aliquip.")
                    }
                }
                
                
                
                .onAppear{
                    apiCall().getUsers {(users ) in
                        self.getusers = users
                }
                }
               
    
            }
                .padding()
                
                
        } .navigationTitle("Prueba Bank")
        
    }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
