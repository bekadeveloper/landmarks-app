//
//  CircleImage.swift
//  Landmarks
//
//  Created by Begzod Bakhriddinov on 20/01/21.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(lineWidth: 4).foregroundColor(.white))
            .shadow(radius: 8)
    }
}
