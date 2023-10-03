//
//  CircleImage.swift
//  Landmarks
//
//  Created by Mary-Ann Fallaria on 10/3/23.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtle rock")
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white,lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
