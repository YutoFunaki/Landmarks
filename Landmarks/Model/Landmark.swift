//
//  Landmark.swift
//  Landmarks
//
//  Created by 船木勇斗 on 2023/02/04.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int                     //固有識別子
    var name: String                //観光地名
    var park: String                //公園の名前
    var state: String               //州の名前
    var description: String
    
    private var imageName: String   //画像の名前
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates            //座標
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
}
