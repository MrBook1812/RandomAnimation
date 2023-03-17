//
//  Model.swift
//  RandomAnimation
//
//  Created by Kirill Kniga on 17.03.2023.
//
import Foundation
import SpringAnimation

struct AnimationCollection {
    var preset: String
    var curve: String
    var force: Double
    var duration: Double
    var delay: Double
    
    static func getAnimation() -> AnimationCollection {
        let collection =  AnimationCollection(
            preset: DataStore.shared.animationPreset.randomElement()?.rawValue ?? "",
            curve: DataStore.shared.animationCurve.randomElement()?.rawValue ?? "",
            force: round(Double.random(in: 1.0...1.8) * 10) / 10,
            duration: round(Double.random(in: 0.9...1.8) * 10) / 10,
            delay: round(Double.random(in: 0.3...0.6) * 10) / 10)
        return collection
    }
}

