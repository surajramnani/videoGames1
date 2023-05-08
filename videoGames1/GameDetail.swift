//
//  GameDetail.swift
//  videoGames1
//
//  Created by Suraj Ramnani on 08/05/23.
//

import SwiftUI

struct GameDetail: View {
    var games: videoGames
    var body: some View {
        VStack{
            Text(games.name)
                .font(.custom("American typewriter", size: 25))
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
    }
}
