import Foundation

struct CareTip: Identifiable {
    let id: UUID
    var title: String
    var tipDescription: String
    var mediaURL: String?
    var isActive: Bool
}

struct UserFavorite: Identifiable {
    let id: UUID
    var contentId: UUID
    var savedAt: Date
}



struct HomeRemedy: Identifiable {
    let id: UUID
    var title: String
    var remedyDescription: String
    var mediaURL: String?
    var videoDurationSeconds: Int?
    var benefits: String
    var instructions: String
    var isActive: Bool
}
// MARK: - HairCareRoutine

struct HairCareRoutine: Identifiable {
    let id = UUID()
    let iconName: String
    let cardHeading: String
    let applyingFrequency: String
    let summary: String
}
