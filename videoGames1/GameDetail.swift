//
//  GameDetail.swift
//  videoGames1
//
//  Created by Suraj Ramnani on 08/05/23.
//

import SwiftUI

struct GameDetail: View {
    @EnvironmentObject var modeldata: modelData
    var games: videoGames
    var body: some View {
        
        var gamesIndex: Int{
            
                modeldata.games.firstIndex(where: {$0.id == games.id})!
            }
      
        VStack{
            HStack{
                Text(games.name)
                    .font(.custom("American typewriter", size: 25))
                FavoritesButton(isSet: $modeldata.games[gamesIndex].isFavorite)
                
            }
            Image(games.imageName)
                .resizable()
                .frame(width: 250, height: 250)
            Text(games.platform)
            Divider()
            Text(games.plot)
                .padding()
            Divider()
            Text("Release Date: \(games.releaseDate)")
            
            
        }
        
    }}

struct GameDetail_Previews: PreviewProvider {
    static var previews: some View {
        GameDetail(games: modelData().games[7])
            .environmentObject(modelData())
    }
        
}
