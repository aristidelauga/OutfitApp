//
//  ContentView.swift
//  OutfitApp
//
//  Created by Aristide LAUGA on 16/11/2021.
//

import SwiftUI

@available(iOS 15.0, *)
struct ContentView: View {
    var body: some View {
        TabView {
            OutfitMenuView()
                .tabItem {
                    Label("Clothes", systemImage: "tshirt")
                        .imageScale(.small)
                }
            OutfitMenuView()
                .tabItem {
                    Label("Outfits", systemImage: "figure.stand")
                        .imageScale(.small)
                }
            OutfitMenuView()
                .tabItem {
                    Label("Bucket", systemImage: "archivebox")
                        .imageScale(.small)
                }
        }
    }
}

@available(iOS 15.0, *)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
