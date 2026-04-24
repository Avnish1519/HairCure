import Foundation

// MARK: - MealType

enum MealType: String, Codable, CaseIterable {
    case breakfast, lunch, snack, dinner
}

// MARK: - MealGoalStatus

enum MealGoalStatus: String, Codable {
    case under
    case met
    case exceeded
}

// MARK: - MealEntry

struct MealEntry: Identifiable {
    let id: UUID
    var userId: UUID
    var mealType: MealType
    var date: Date
    var isLogged: Bool
    var loggedAt: Date?
    var calorieTarget: Float
    var caloriesConsumed: Float
    var proteinConsumed: Float
    var carbsConsumed: Float
    var fatConsumed: Float
    var goalStatus: MealGoalStatus
}

// MARK: - MealFood

struct MealFood: Identifiable {
    let id: UUID
    var mealEntryId: UUID
    var foodId: UUID
    var quantity: Float
}

// MARK: - Food

struct Food: Identifiable {
    let id: UUID
    var externalFoodId: String?
    var name: String
    var imageURL: String?
    var foodType: String
    var isVegetarian: Bool
    var isCustom: Bool
    var createdByUserId: UUID?
    var servingSizeGrams: Float
    var apiSource: String?
    var totalCaloriesMin: Float
    var totalCaloriesMax: Float
    var totalProteinsInGm: Float
    var totalCarbsInGm: Float
    var totalFatInGm: Float
    var totalVitaminsInMg: Float
    var isBiotinRich: Bool
    var isZincRich: Bool
    var isIronRich: Bool
    var isOmega3Rich: Bool
    var isVitaminARich: Bool
    var suitableMealTypes: [MealType]
    var createdAt: Date
}
