//
//  GamesList.swift
//  videoGames1
//
//  Created by Suraj Ramnani on 08/05/23.
//

import SwiftUI

struct GamesList: View {
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(modelData().games){
                    game in
                    NavigationLink{
                        GameDetail(games: game)
                    }
                label:{
                    GameRow(games: game)
                }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Video Games")
        }
        
    }
}


struct GamesList_Previews: PreviewProvider {
    static var previews: some View {
        GamesList()
    }
}
