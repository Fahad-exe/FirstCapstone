// Abdulrahman Alshammari

import Foundation

func getResponse(message: String) -> String {
    let tempMessage = message.lowercased()
    
    if tempMessage.contains("yes, i am") {
        return "Good, I am coming"
    }
    else if tempMessage.contains("call me") {
        return "ok"
    }
    else if tempMessage.contains("طيب تكلم عربي") {
        return "ابشر"
    } else {
        return "I don't get you"
    }
}
