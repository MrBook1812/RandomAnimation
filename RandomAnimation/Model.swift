//
//  Model.swift
//  RandomAnimation
//
//  Created by Kirill Kniga on 17.03.2023.
//

struct AnimationCollection {
    var preset: String
    var curve: String
    var force: Double
    var duration: Double
    var delay: Double
}

let presetArray = [
    "pop",
    "slideLeft",
    "slideRight",
    "slideDown",
    "slideUp",
    "squeezeLeft",
    "squeezeRight",
    "squeezeDown",
    "squeezeUp",
    "fadeIn"
]

let curveArray = [
    "easeOutQuad",
    "easeInOutQuad",
    "easeInCubic",
    "easeOutCubic",
    "easeInOutCubic",
    "easeInQuart",
    "easeOutQuart",
    "easeInOutQuart",
    "easeInQuint",
    "easeOutQuint"
]

let forceArray = [
    1.0,
    1.05,
    1.1,
    1.15,
    1.2,
    1.25,
    1.3,
    1.35
]

let durationArray = [
    1.0,
    1.05,
    1.1,
    1.15,
    1.2,
    1.25,
    1.3,
    1.35
]

let delayArray = [
    0.0,
    0.2,
    0.3,
    0.4,
    0.5,
    1.0,
    1.2
]

extension AnimationCollection {
    static func getCollection() -> [AnimationCollection] {
        [
            AnimationCollection(preset: presetArray.randomElement() ?? "ops",
                                curve: curveArray.randomElement() ?? "ops",
                                force: forceArray.randomElement() ?? 0.0,
                                duration: durationArray.randomElement() ?? 0.0,
                                delay: delayArray.randomElement() ?? 0.0)
        ]
    }
}
