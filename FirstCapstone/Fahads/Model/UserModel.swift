//
//  UserModel.swift
//  FirstCapstone
//
//  Created by Fahad Matlagitu on 10/12/2023.
//

import Foundation


struct UserModel: Identifiable, Codable {
        let id: UUID
        var name_en: String
        var name_ar: String
        var address: String
        var contactInfo: String
    }
