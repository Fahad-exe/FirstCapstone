// Abdulrahman Alshammari


import Foundation

struct DeliverModel: Identifiable, Codable {
    let id: UUID
    let parcel_id: ParcelModel.ID
    var contact: String
    var name_en: String
    var name_ar: String
    var address: String
}
