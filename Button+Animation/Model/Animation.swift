//
//  DataModel.swift
//  Button+Animation
//
//  Created by Илья Стратович on 16.03.23.
//

//MARK: Data Model
struct Animation: CustomStringConvertible {
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
"""

preset: \(name)
curve: \(curve)
force: \(String(format: "%02.f", force))
duration: \(String(format: "%02.f", duration))
delay: \(String(format: "%02.f", delay))
"""
    }
}

extension Animation {
    static func getSomeAnimation() -> Animation {
        Animation(
            name: DataStore.data.presets.randomElement()?.rawValue ?? "pop",
            curve: DataStore.data.curves.randomElement()?.rawValue ?? "easyIn",
            force: Double.random(in: 0.1...1.5),
            duration: Double.random(in: 0.1...1.6),
            delay: 2
        )
    }
}





