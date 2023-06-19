//
//  DataStore.swift
//  AnimViewApp
//
//  Created by Юрий Емелин on 16.06.2023.
//

import SpringAnimation

final class DataStore {
    
    static let shared = DataStore()
    
    let animation: [AnimationPreset] = [
        .fadeIn,
        .fadeInDown,
        .fadeInLeft,
        .fadeInRight,
        .fadeInUp,
        .fadeOut,
        .fadeOutIn,
        .fall,
        .flash,
        .flipX,
        .flipY,
        .morph,
        .pop,
        .shake,
        .slideDown,
        .slideLeft,
        .slideRight,
        .slideUp,
        .squeeze,
        .squeezeDown,
        .squeezeLeft,
        .squeezeRight,
        .squeezeUp,
        .swing,
        .wobble,
        .zoomIn,
        .zoomOut
    ]
    
    let curve = AnimationCurve.allCases
    
    private init() {}
}
