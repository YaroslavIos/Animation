//
//  DataStore.swift
//  Animation
//
//  Created by Ярослав Любиченко on 17.3.2023.
//

final class DataStore {
    static let shared = DataStore()
    
    let presets = [
        "pop",
        "slideUp",
        "fadeIn",
        "zoomIn",
        "shake",
        "morph",
        "flash",
        "swing",
        "wooble",
        "flipY"
    ]
    
    let curves = [
        "easeIn",
        "easeOut",
        "easeInCubic",
        "spring",
        "easeInQuad",
        "linear",
        "easeOut",
        "easeOutExpo",
        "easeInBack",
        "easeOutQuint"
    ]
    
    private init() {}
}
