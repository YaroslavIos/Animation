//
//  Animation.swift
//  Animation
//
//  Created by Ярослав Любиченко on 17.3.2023.
//
struct Animation {
    let preset: String
    let curve: String
    
    static func setAnimation() -> [Animation] {
        [
            Animation(
                preset: DataStore.shared.presets.randomElement()!,
                curve: DataStore.shared.curves.randomElement()!
            ),
            Animation(
                preset: DataStore.shared.presets.randomElement()!,
                curve: DataStore.shared.curves.randomElement()!
            ),
            Animation(
                preset: DataStore.shared.presets.randomElement()!,
                curve: DataStore.shared.curves.randomElement()!
            ),
            Animation(
                preset: DataStore.shared.presets.randomElement()!,
                curve: DataStore.shared.curves.randomElement()!
            ),
            Animation(
                preset: DataStore.shared.presets.randomElement()!,
                curve: DataStore.shared.curves.randomElement()!
            ),
            Animation(
                preset: DataStore.shared.presets.randomElement()!,
                curve: DataStore.shared.curves.randomElement()!
            ),
            Animation(
                preset: DataStore.shared.presets.randomElement()!,
                curve: DataStore.shared.curves.randomElement()!
            ),
            Animation(
                preset: DataStore.shared.presets.randomElement()!,
                curve: DataStore.shared.curves.randomElement()!
            ),
            Animation(
                preset: DataStore.shared.presets.randomElement()!,
                curve: DataStore.shared.curves.randomElement()!
            ),
            Animation(
                preset: DataStore.shared.presets.randomElement()!,
                curve: DataStore.shared.curves.randomElement()!
            ),
        ]
    }
}
