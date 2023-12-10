import SwiftUI



class LocalizationViewModel: ObservableObject {
    @Published var langState: String
    @Published var dirState: LayoutDirection
    
    init() {
        if let lang = UserDefaults.standard.string(forKey: "lang-key"){
            langState = lang
            if let dir = UserDefaults.standard.string(forKey: "dir-key"){
                if (dir == "rtl"){
                    dirState = LayoutDirection.rightToLeft
                }else{
                    dirState = LayoutDirection.leftToRight
                }
            }else{
                dirState = LayoutDirection.leftToRight
            }
        }else{
            langState = "en" //default
            dirState = LayoutDirection.leftToRight // default
        }
    }
    
    
    
    func toggleLang() {
        if langState == "ar" {
            langState = "en"
            dirState = .leftToRight
            UserDefaults.standard.setValue("ltr", forKey: "dir-key")
        } else {
            langState = "ar"
            dirState = .rightToLeft
            UserDefaults.standard.setValue("rtl", forKey: "dir-key")
        }
        UserDefaults.standard.setValue(langState, forKey: "lang-key")
        
        
        print(langState)
        
    }
}
