// Abdulrahman Alshammari

import Foundation

struct ParcelModel: Identifiable, Codable {
    let id: UUID
    var weight: String
    var sender: UserModel.ID
    var receiver: UserModel.ID
    var status: String
    var desc_en: String
    var desc_ar: String
}
