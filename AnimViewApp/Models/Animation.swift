//
//  Animation.swift
//  AnimViewApp
//
//  Created by Юрий Емелин on 16.06.2023.
//

struct Animation {
    
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        preset: \(name)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            name: DataStore.shared.animation.randomElement()?.rawValue ?? "slideLeft",
            curve: DataStore.shared.curve.randomElement()?.rawValue ?? "easeIn",
            force: Double.random(in: 1...2),
            duration: Double.random(in: 0.8...2),
            delay: 0.3
        )
    }
    
}
