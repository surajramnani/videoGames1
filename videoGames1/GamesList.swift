//
//  GamesList.swift
//  videoGames1
//
//  Created by Suraj Ramnani on 08/05/23.
//

import SwiftUI

struct GamesList: View {
    @EnvironmentObject var modeldata: modelData
    @State private var showFavorites = false
    var body: some View {
        
        var filteredGames: [videoGames]{
            modelData().games.filter { videoGames in
                (!showFavorites || videoGames.isFavorite)
            }
            
        }
       
        NavigationStack{
            Toggle("Show Favorites Only", isOn: $showFavorites)
                .padding()
            List{
                ForEach(filteredGames){
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
