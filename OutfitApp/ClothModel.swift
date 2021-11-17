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
    let category: clothCategory
    let brandName: String
    
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
