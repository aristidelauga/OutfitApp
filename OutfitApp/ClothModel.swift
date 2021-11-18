//
//  ClothModel.swift
//  OutfitApp
//
//  Created by Aristide LAUGA on 16/11/2021.
//

import Foundation


class ClothModel: Identifiable, ObservableObject {
   @Published var id = UUID()
   @Published var name: String
   @Published var brandName: String
   @Published var category: ClothCategory
   @Published var season: Season
   @Published var mainColor: String
    
    
    init(name: String, brandName: String, category: ClothCategory, season: Season, mainColor: String) {
        self.name = name
        self.brandName = brandName
        self.category = category
        self.season = season
        self.mainColor = mainColor
    }
    
}

enum ClothCategory: CaseIterable {
    case hat
    case scarf
    case teeShirt
    case sweater
    case hoodie
    case suit
    case jacket
    case pants
    case shortsPants
    case skirt
    case shoes
}


enum Season: CaseIterable {
    case Spring
    case Summer
    case Autumn
    case Winter
}
