//
//  IntroView.swift
//  OutfitApp
//
//  Created by Aristide LAUGA on 16/11/2021.
//

import SwiftUI

@available(iOS 15.0, *)
struct IntroView: View {
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("closet")
                    .resizable()
                    .frame(maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.all)
                    
                
                VStack {
                    Text("iCloset")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.black)
                    
                    
                    
                    
                    Spacer()
                    
                    NavigationLink(destination: ContentView() .navigationBarBackButtonHidden(true)) {
                        Text("Your dressroom")
                            .foregroundColor(.black)
                    }
                   
                    .padding()
                    .background(Color.white)
                    .cornerRadius(25)
                    .padding(.top, 200)
                    
                    
                    
                    Spacer()
                }
                
            }
        }
    }
}

@available(iOS 15.0, *)
struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
