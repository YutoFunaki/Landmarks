//
//  ContentView.swift
//  Landmarks
//
//  Created by 船木勇斗 on 2023/02/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)//MapViewを画面上端まで拡張させる
                .frame(height: 300)//縦幅300
            
            CircleImage()
                .offset(y: -130)//MapViewと被せるためにY軸移動
                .padding(.bottom, -130)

            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                
                Divider()//薄いボーダー
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
                
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
