//
//  ContentView.swift
//  LunarZodiac
//
//  Created by Anthony Marie on 1/30/23.
//

import SwiftUI

struct ContentView: View {
    @State private var year = 2023
    @State private var imageNumber = 3
    var body: some View {
        VStack {
            
            Text(String(year))
                .fontWeight(.black)
                .foregroundColor(.orange)
                .font(.largeTitle)
            
            
            Image("image\(imageNumber)")
                .resizable()
                .scaledToFit()
            
            
            
            HStack{
                
                
                Button("<") {
                    year -= 1
                    imageNumber -= 1
                    if imageNumber < 0 {
                        imageNumber = 11
                    }
                }
                Spacer()
                Button(">") {
                    year += 1
                    imageNumber += 1
                    if imageNumber > 11 {
                        imageNumber = 0
                        
                    }
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.orange)
            .padding()
            .font(.largeTitle)
            .fontWeight(.black)
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
