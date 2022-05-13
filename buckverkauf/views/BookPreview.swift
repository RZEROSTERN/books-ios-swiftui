//
//  BookPreview.swift
//  buckverkauf
//
//  Created by Marco Ramírez Solís on 13/05/22.
//

import SwiftUI

struct BookPreview: View {
    @State var showCartView = false
    
    var body: some View {
        HStack {
            Spacer(minLength: 35)
            VStack(alignment: .center, content: {
                Image("cover")
                    .resizable()
                    .frame(width: 120, height: 200)
                    .cornerRadius(10)
                    .shadow(color: .gray, radius: 10)
                    .padding(.init(top: 0, leading: 0, bottom: 12, trailing: 0))
                
                Text("J.R.R. Tolkien")
                    .font(.footnote)
                    .foregroundColor(.gray)
                
                Text("The Fellowship of the Ring")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding(.bottom)
                
                Text("The Fellowship of the Ring is the first of three volumes in The lord of the Rings, an epic set in the fictional world of Middle-earth. The Lord of the rings is an enttity named Sauron, the Dark Lord,...")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    
                HStack {
                    BookDetailLabel(text: "Fantasy")
                    BookDetailLabel(text: "Action")
                    BookDetailLabel(text: "Novel")
                }
                
                Divider().padding()

                BuyButton(text: "Buy for $19.95")
                
            })
            Spacer(minLength: 35)
        }
        .sheet(isPresented: $showCartView, content: {
            CartView(showModal: $showCartView)
        })
        .navigationTitle("Detail")
        .toolbar {
            Button("🛒") {
                self.showCartView = true
            }
        }
    }
}

struct BookPreview_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BookPreview()
        }
    }
}
