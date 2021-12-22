//
//  DetailContentView.swift
//  PruebaBankEmilioMarques
//
//  Created by Developer on 21/12/21.
//

import SwiftUI

struct DetailContentView: View {
    var body: some View {
        VStack {
            Text(user.amount)
                    .font(.caption2)
                    .bold()
                  Image(systemName: "star.fill")
                    .font(.title2)
                    .foregroundColor(.red)
                    .shadow(radius: 1)
                }
              }
            }
            .onAppear(perform: readFile)
}}
}

struct DetailContentView_Previews: PreviewProvider {
    static var previews: some View {
        DetailContentView()
    }
}
