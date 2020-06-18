//
//  Data Manager.swift
//  AnimationDemonstrationApp
//
//  Created by Kir Pir on 18.06.2020.
//  Copyright © 2020 Kirill_Presnyakov. All rights reserved.
//

import Foundation

class DataManager {
    
   static let shared = DataManager()
    
    let animations = ["slideRight",
                      "slideUp",
                      "squeezeLeft",
                      "squeezeDown",
                      "fadeIn",
                      "fadeInLeft",
                      "fadeInDown",
                      "fall",
                      "pop",
                      "flipY",
                      "morph",
                      "squeeze",
                      "flash"]
    
    let curves = ["easeInOut",
                  "linear",
                  "easeInSine",
                  "easeInOutSine",
                  "easeOutQuad",
                  "easeInCubic",
                  "easeInQuart",
                  "easeOutQuart",
                  "easeInQuint",
                  "easeInOutQuint",
                  "easeInOutExpo",
                  "easeOutBack",
                  "easeInOutBack"]
    
    private init() {}
    
}
