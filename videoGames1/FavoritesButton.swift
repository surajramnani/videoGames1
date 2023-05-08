//
//  FavoritesButton.swift
//  videoGames1
//
//  Created by Suraj Ramnani on 08/05/23.
//

import SwiftUI

struct FavoritesButton: View {
    @Binding var isSet: Bool
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Show Favorites Only", systemImage: isSet ? "star.fill" : "star")
                .foregroundColor(isSet ? .yellow : .gray)
        }
        .labelStyle(.iconOnly)
    
    }
}
struct FavoritesButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesButton(isSet: .constant(true))
    }
}
