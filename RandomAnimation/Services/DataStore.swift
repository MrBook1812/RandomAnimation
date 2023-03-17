//
//  DataStore.swift
//  RandomAnimation
//
//  Created by Kirill Kniga on 17.03.2023.
//

import Foundation
import SpringAnimation

final class DataStore {
    static let shared = DataStore()
    
    let animationPreset = AnimationPreset.allCases
    let animationCurve = AnimationCurve.allCases
    
    private init() {}
}
