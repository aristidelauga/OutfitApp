//
//  ClothesView.swift
//  OutfitApp
//
//  Created by Aristide LAUGA on 16/11/2021.
//

import SwiftUI

@available(iOS 15.0, *)
struct ClothesView: View {
    
    @State var searchableCloth = ""
    
    @ObservedObject var cloth = ClothModel(name: "Basic Sweater", brandName: "Nike", category: .hoodie, season: .Winter, mainColor: "Wine red")
    
    let data = (1...100).map {"Item \($0)"}
    let columns = [GridItem(.adaptive(minimum: 80))]
    
    
    var body: some View {
        NavigationView {
            VStack {
                Text("")
                    .searchable(text: $searchableCloth, prompt: "Search")
                    .navigationTitle("Clothes")
                Button(action: {
                    
                })
                {
                    VStack {
                        ZStack(alignment: .bottomLeading) {
                            Image("addNewOutfit")
                                .resizable()
                                .cornerRadius(25)
                                .shadow(color: .secondary, radius: 5, x: 3, y: 3)
                            
                            Text("Add new")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .padding()
                            
                            
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width * 0.9, height: 200)
                }
                
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(data, id: \.self) { item in
                            Text(item)
                        }
                        .padding()
                        .background(.ultraThinMaterial)
                        .cornerRadius(25)
                    }
                }
                
                //                .frame(height: 20)
            }
        }.padding()
    }
}
//}

@available(iOS 15.0, *)
struct ClothesView_Previews: PreviewProvider {
    static var previews: some View {
        ClothesView()
    }
}


/*
 
 
 VStack {
 ZStack {
 Image("addNewOutfit")
 .resizable()
 .cornerRadius(25)
 //                                .frame(width: UIScreen.main.bounds.width * 0.9, height: 200)
 .shadow(color: .secondary, radius: 5, x: 3, y: 3)
 HStack {
 VStack {
 Spacer()
 Text("Add new")
 .font(.largeTitle)
 .foregroundColor(.white)
 .fontWeight(.bold)
 .padding()
 }
 Spacer()
 }
 
 }
 }
 .frame(width: UIScreen.main.bounds.width * 0.9, height: 200)
 
 
 
 
 */
