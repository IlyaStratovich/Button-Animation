//
//  DataStore.swift
//  Button+Animation
//
//  Created by Илья Стратович on 17.03.23.
//

import UIKit
import SpringAnimation
//MARK: Data Store
final class DataStore {
    
    static let data = DataStore()
    
    let presets: [AnimationPreset] = AnimationPreset.allCases
    let curves: [AnimationCurve] = AnimationCurve.allCases
    
    private init() {}
}
