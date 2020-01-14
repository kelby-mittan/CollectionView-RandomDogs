//
//  RandomDogInfo.swift
//  CollectionView-RandomDogs
//
//  Created by Kelby Mittan on 1/14/20.
//  Copyright © 2020 Kelby Mittan. All rights reserved.
//

import Foundation

typealias DogImage = String

struct RandomDogInfo: Decodable {
    let message: [DogImage]
}
