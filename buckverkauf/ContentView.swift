//
//  ContentView.swift
//  buckverkauf
//
//  Created by Marco Ramírez Solís on 13/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            BooksList()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
