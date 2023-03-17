//
//  ImageAnimationExtension.swift
//  Button+Animation
//
//  Created by Илья Стратович on 17.03.23.
//

import Foundation
import SpringAnimation
//MARK: ImageAnimation extension
extension ImageAnimation {
    static func getSomeAnimation() -> ImageAnimation {
        let someAnimation = ImageAnimation(
            preset: DataStore.data.presets.randomElement() ?? .fadeIn,
            curve: DataStore.data.curves.randomElement() ?? .easeIn,
            force: Float.random(in: 0.1...4.0),
            duration: Float.random(in: 0.1...4.0)
        )
        return someAnimation
    }
}
