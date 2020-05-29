//
//  Demon.swift
//  Doom
//
//  Created by Nick Ivanov on 29.05.2020.
//  Copyright © 2020 Nick Ivanov. All rights reserved.
//

import UIKit

struct DemonProperty {
    let name: String?
    let text: String?
    let image: UIImage?
}

class DemonsAPI {
    static func getdemons() -> [DemonProperty] {
        let demonPropertys = [
            DemonProperty(name: "Arachnotron", text: arachnotron, image: UIImage(named: "Arachnotron")),
            DemonProperty(name: "Arch-Vile", text: arch_Vile, image: UIImage(named: "Arch-Vile")),
            DemonProperty(name: "Doom Hunter", text: doom_Hunter, image: UIImage(named: "Doom Hunter")),
            DemonProperty(name: "Icon of sin", text: icon_of_sin, image: UIImage(named: "Icon of sin")),
            DemonProperty(name: "Pain elemental", text: pain_elemental, image: UIImage(named: "Pain elemental")),
            DemonProperty(name: "Tyrant", text: tyrant, image: UIImage(named: "Tyrant")),
            DemonProperty(name: "Whiplash", text: whiplash, image: UIImage(named: "Whiplash")),
            DemonProperty(name: "Сarcass", text: carcass, image: UIImage(named: "Сarcass")),
            DemonProperty(name: "Betrayer", text: betrayer, image: UIImage(named: "Betrayer")),
            DemonProperty(name: "Cacodemon", text: cacodemon, image: UIImage(named: "Cacodemon")),
            DemonProperty(name: "Cyber Mancubus", text: cyber_mancubus, image: UIImage(named: "Cyber Mancubus")),
            DemonProperty(name: "Deag Grav", text: deag_grav, image: UIImage(named: "Deag Grav")),
            DemonProperty(name: "Deag Nilox", text: deag_nilox, image: UIImage(named: "Deag Nilox")),
            DemonProperty(name: "Deag Ranak", text: deag_ranak, image: UIImage(named: "Deag Ranak")),
            DemonProperty(name: "Dread Knight", text: dread_knight, image: UIImage(named: "Dread Knight")),
            DemonProperty(name: "Gargoyle", text: gargoyle, image: UIImage(named: "Gargoyle")),
            DemonProperty(name: "Gladiator", text: gladiator, image: UIImage(named: "Gladiator")),
            DemonProperty(name: "Hell Knight", text: hell_knight, image: UIImage(named: "Hell Knight")),
            DemonProperty(name: "Imp", text: imp, image: UIImage(named: "Imp")),
            DemonProperty(name: "Khan Maykr", text: khan_maykr, image: UIImage(named: "Khan Maykr")),
            DemonProperty(name: "King Novick", text: king_novick, image: UIImage(named: "King Novick")),
            DemonProperty(name: "Lost soul", text: lost_soul, image: UIImage(named: "Lost soul")),
            DemonProperty(name: "Mancubus", text: mancubus, image: UIImage(named: "Mancubus")),
            DemonProperty(name: "Marauder", text: marauder, image: UIImage(named: "Marauder")),
            DemonProperty(name: "Mech-Zombie", text: mech_zombie, image: UIImage(named: "Mech-Zombie")),
            DemonProperty(name: "Pinky", text: pinky, image: UIImage(named: "Pinky")),
            DemonProperty(name: "Prowler", text: prowler, image: UIImage(named: "Prowler")),
            DemonProperty(name: "Revenant", text: revenant, image: UIImage(named: "Revenant")),
            DemonProperty(name: "Samuel Hayden", text: samuel_hayden, image: UIImage(named: "Samuel Hayden")),
            DemonProperty(name: "Seraphim", text: seraphim, image: UIImage(named: "Seraphim")),
            DemonProperty(name: "Soldier", text: soldier, image: UIImage(named: "Soldier")),
            DemonProperty(name: "Spectre", text: spectre, image: UIImage(named: "Spectre")),
            DemonProperty(name: "Zombie", text: zombie, image: UIImage(named: "Zombie")),
        ]
        return demonPropertys
    }
}
