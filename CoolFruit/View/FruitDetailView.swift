//
//  FruitDetailView.swift
//  CoolFruit
//
//  Created by Alexander Bowser on 12/25/21.
//

import SwiftUI

struct FruitDetailView: View {
    
    var fruit: Fruit
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                FruitHeaderView(fruit: fruit)
                VStack(alignment: .leading, spacing: 20) {
                    Text(fruit.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(fruit.gradientColors[1])
                    Text(fruit.headline)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    // MARK: - Nutrients View
                    FruitNutrientsView(fruit: fruit)
                    
                    Text("Learn more about \(fruit.title)".uppercased())
                        .fontWeight(.bold)
                        .foregroundColor(fruit.gradientColors[1])
                    Text(fruit.description)
                        .multilineTextAlignment(.leading)
                    // MARK: - Link
                    SourceLinkView()
                        .padding(.top, 10)
                        .padding(.bottom, 40)
                    
                }
                .padding(.horizontal, 20)
                .frame(maxWidth: 640, alignment: .center)
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }
            //.edgesIgnoringSafeArea(.top)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
