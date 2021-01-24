//
//  Profile.swift
//  Landmarks
//
//  Created by Begzod Bakhriddinov on 23/01/21.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications: Bool = true
    var seasonalPhoto = Season.summer
    var goalDate = Date()
    
    static let `default` = Profile(username: "user981234")
    
    enum Season: String, CaseIterable, Identifiable {
        case winter = "❄️"
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        
        var id: String { self.rawValue }
    }
}
