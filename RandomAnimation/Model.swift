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
}

extension AnimationCollection {
    static func getCollection() -> [AnimationCollection] {
        [
            AnimationCollection(preset: AnimationPreset.allCases.randomElement()?.rawValue ?? "",
                                curve: AnimationCurve.allCases.randomElement()?.rawValue ?? "",
                                force: round(Double.random(in: 1.0...1.8) * 10) / 10,
                                duration: round(Double.random(in: 0.9...1.8) * 10) / 10,
                                delay: 0.30)
        ]
    }
}
