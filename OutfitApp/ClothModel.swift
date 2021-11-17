//
//  ClothModel.swift
//  OutfitApp
//
//  Created by Aristide LAUGA on 16/11/2021.
//

import Foundation


struct ClothModel: Identifiable {
    let id = UUID()
    let name: String
    let brandName: String
    let category: clothCategory
    let season: Season
    let mainColor: String
}

enum clothCategory: CaseIterable {
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
