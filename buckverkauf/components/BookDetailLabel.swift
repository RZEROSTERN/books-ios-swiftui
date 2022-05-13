//
//  BookDetailLabel.swift
//  buckverkauf
//
//  Created by Marco Ramírez Solís on 13/05/22.
//

import SwiftUI

struct BookDetailLabel: View {

    var text: String

    var body: some View {
        Text(text)
            .fontWeight(.semibold)
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.gray, lineWidth: 1)
            )
    }
}

struct BookDetailLabelView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailLabel(text: "Fantasy")
    }
}
