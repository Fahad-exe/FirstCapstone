//
//  Items.swift
//  FirstCapstone
//
//  Created by Fahad Matlagitu on 10/12/2023.
//

import Foundation

struct Items: Codable, Identifiable {
    let id: UUID
    let address: String
    let contactInfo: String
    let name_ar: String
    let name_en: String
}
