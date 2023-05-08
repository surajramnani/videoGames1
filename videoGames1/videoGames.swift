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
    let releaseDate: String
    let plot: String
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var logoImage: String
    var logo: Image{
        Image(logoImage)
    }
    let platform: String
    
}

