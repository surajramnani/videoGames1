//
//  GameRow.swift
//  videoGames1
//
//  Created by Suraj Ramnani on 08/05/23.
//

import SwiftUI

struct GameRow: View {
    var games: videoGames
    var body: some View {
        HStack{
            Image(systemName: games.logoImage)
                .foregroundColor(.blue)
            Text(games.name)
        }    }
}

struct GameRow_Previews: PreviewProvider {
    static var previews: some View {
        GameRow(games: modelData().games[0])
    }
}
