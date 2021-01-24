//
//  ContentView.swift
//  Landmarks
//
//  Created by Begzod Bakhriddinov on 20/01/21.
//

import SwiftUI

struct ContentView: View {
    @State var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem { Label("Featured", systemImage: "star") }
                .tag(Tab.featured)
            
            LandmarkList()
                .tabItem { Label("List", systemImage: "list.bullet") }
                .tag(Tab.list)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro Max")
            .previewDisplayName("iPhone 12 Pro Max")
            .preferredColorScheme(.dark)
            .environmentObject(ModelData())
    }
}

