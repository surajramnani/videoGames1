//
//  videoGames.swift
//  videoGames1
//
//  Created by Suraj Ramnani on 08/05/23.
//

import Foundation
import SwiftUI

struct videoGames: Codable,Hashable,Identifiable{
    let id: Int
    let name: String
    let releaseDate: String
    let plot: String
    let imageName: String
    let logoImage: String
    let platform: String
    let isFavorite: Bool
    let isFeatured: Bool
    let Color: color
    enum color: String,CaseIterable,Codable {
        case blue = ".blue"
        case green = ".green"
        case black = ".black"
    }
    
}

final class modelData: ObservableObject {
    
    @Published var games:[videoGames] = [videoGames(id: 1, name: "God of War Ragnarok", releaseDate: "November 9, 2022", plot: "God of War Ragnarok is such a fitting end to the end of Kratos' Norse arc, along with Atreus, Mimir, and other returning pals. The story has serious narrative punch, there are some brilliant puzzles, and the combat is a fantastic evolution of the extremely satisfying mechanics from the last game too. This is the one to beat.", imageName: "gow", logoImage: "playstation.logo", platform: "PS5", isFavorite: true, isFeatured: true, Color: .blue),
      videoGames(id: 2, name: "Horizon Forbidden West", releaseDate: "February 18, 2022", plot: "Horizon Forbidden West is such a confident sequel. It's not reinventing the wheel - it's another game about saving a world filled with giant robot dinosaurs - but it doesn't have to. Aloy's story is just as compelling as the first game, but with more human elements, interesting new character additions, and tonnes more personality. It's got some of the best side quests in the gaming space right now too.", imageName: "hfw", logoImage: "playstation.logo", platform: "PS5", isFavorite: true, isFeatured: false,Color: .blue),
        videoGames(id: 3, name: "Spider-Man: Miles Morales", releaseDate: "November 12, 2020", plot: "Spider-Man Miles Morales is packed with comic book adventure, heart and soul. Miles has some new powers this time around, like the bioelectric venom. Spider-Man: Miles Morales manages the tricky task of delivering a story that Venom punches you right in the heart, but is also a place that you want to escape to after a long day in the real world. Thanks mainly to Miles' charm, and that sweet swinging, Spider-Man: Miles Morales pulls it off so well you'll wish Peter Parker a happy retirement without even a tear in your eye.", imageName: "sm", logoImage: "playstation.logo", platform: "PS5", isFavorite: true, isFeatured: false, Color: .blue),
        videoGames(id: 4, name: "Elden Ring", releaseDate: "February 22, 2022", plot: "Elden Ring is a 2022 action role-playing game that was developed by FromSoftware, published by Bandai Namco Entertainment, and directed by Hidetaka Miyazaki with worldbuilding provided by fantasy writer George R. R. Martin. ", imageName: "ER", logoImage: "xbox.logo", platform: "Xbox", isFavorite: true, isFeatured: false, Color: .green),
        videoGames(id: 5, name: "Forza Horizon 5", releaseDate: "November 5, 2021", plot: "Forza Horizon 5 is a 2021 racing video game developed by Playground Games and published by Xbox Game Studios. It is the fifth Forza Horizon title and twelfth main instalment in the Forza series. The game is set in a fictionalised representation of Baja California, Mexico", imageName: "fh5", logoImage: "xbox.logo", platform: "Xbox", isFavorite: false, isFeatured: false,Color: .green),
        videoGames(id: 6, name: "Psychonauts 2", releaseDate: "August 25, 2021", plot: "Psychonauts 2 is a platform game developed by Double Fine and published by Xbox Game Studios. The game was announced at The Game Awards 2015 ceremony, and released on August 25, 2021 for PlayStation 4, Windows, Xbox One and Xbox Series X/S, and on May 24, 2022 for Linux and macOS.", imageName: "P2", logoImage: "xbox.logo", platform: "Xbox", isFavorite: false, isFeatured: false, Color: .green),
            videoGames(id: 7, name: "Red Dead Redemption 2", releaseDate: "October 26th, 2018", plot: "Red Dead Redemption 2 is a 2018 action-adventure game developed and published by Rockstar Games. The game is the third entry in the Red Dead series and a prequel to the 2010 game Red Dead Redemption. ", imageName: "rdr2", logoImage: "desktopcomputer", platform: "PC", isFavorite: true, isFeatured: false, Color: .black),
            videoGames(id: 8, name: "The Witcher 3: Wild Hunt", releaseDate: "May 18, 2015", plot: "The Witcher 3: Wild Hunt is a 2015 action role-playing game developed and published by CD Projekt. It is the sequel to the 2011 game The Witcher 2: Assassins of Kings and the third game in The Witcher video game series, played in an open world with a third-person perspective.", imageName: "w3", logoImage: "desktopcomputer", platform: "PC", isFavorite: false, isFeatured: false, Color: .black),
            videoGames(id: 9, name: "MineCraft", releaseDate: "November 18, 2011", plot: "Minecraft. Platform: PC. November 18, 2011. The game involves players creating and destroying various types of blocks in a three dimensional environment.", imageName: "minecraft", logoImage: "desktopcomputer", platform: "PC", isFavorite: false, isFeatured: false, Color: .black)
                                         
    ]
    
    var platform: [String:[videoGames]] {
        Dictionary(grouping: games, by: {String($0.platform.first!) }
        )
        
       
    }
    

}
  







