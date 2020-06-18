//
//  Animation.swift
//  AnimationDemonstrationApp
//
//  Created by Kir Pir on 17.06.2020.
//  Copyright © 2020 Kirill_Presnyakov. All rights reserved.
//

import Spring

struct Animation {
    let animation: String
    let curve: String
 
    static func getAllAnimations() -> [Animation] {
        
        var springAnimations: [Animation] = []
        
        let animations = DataManager.shared.animations.shuffled()
        let curves = DataManager.shared.animations.shuffled()
        
        for i in 0..<animations.count {
            let animationsAndCurves = Animation(animation: animations[i], curve: curves[i])
            
            springAnimations.append(animationsAndCurves)
        }
        return springAnimations
    }
}
