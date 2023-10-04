//
//  Detail.swift
//  Landmarks
//
//  Created by Mary-Ann Fallaria on 10/4/23.
//

import SwiftUI

struct Detail: View {
    var landmark: Landmark
    var body: some View {
        
        ScrollView {
            MapView(coordinate: landmark.locationCoordinates  )
                .frame(height: 300)
             
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack (alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                .foregroundColor(.black)
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                Divider()
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
            
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    Detail(landmark: landmarks[0])
}
