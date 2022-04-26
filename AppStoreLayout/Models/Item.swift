
import Foundation

enum Item: Hashable {
    case app(App)
    case category(StoreCategory)
    
    var app: App? {
        if case .app(let app) = self {
            return app
        } else {
            return nil
        }
    }
    
    var category: StoreCategory? {
        if case .category(let category) = self {
            return category
        } else {
            return nil
        }
    }
    
    static let promotedApps: [Item] = [
        .app(App(promotedHeadline: "Now Trending", title: "What's The Word", subtitle: "Game Description", price: 3.99)),
        .app(App(promotedHeadline: "Limited Time", title: "Teminator", subtitle: "Game Description", price: 15.98)),
        .app(App(promotedHeadline: "New Update", title: "Black Knight", subtitle: "Game Description", price: nil)),
        .app(App(promotedHeadline: "Just Released", title: "Chick-Fil-A", subtitle: "Game Description", price: nil))
    ]
    
    static let popularApps: [Item] = [
        .app(App(promotedHeadline: nil, title: "NBA 2K23", subtitle: "Game Description", price: 49.99)),
        .app(App(promotedHeadline: nil, title: "NFL 2023", subtitle: "Game Description", price: 25.99)),
        .app(App(promotedHeadline: nil, title: "Sims", subtitle: "Game Description", price: 50.99)),
        .app(App(promotedHeadline: nil, title: "Creed", subtitle: "Game Description", price: 9.99)),
        .app(App(promotedHeadline: nil, title: "Reddit", subtitle: "Game Description", price: nil)),
        .app(App(promotedHeadline: nil, title: "Slack", subtitle: "Game Description", price: nil)),
        .app(App(promotedHeadline: nil, title: "DuckDuckGo", subtitle: "Game Description", price: 6.99)),
        .app(App(promotedHeadline: nil, title: "Instagram", subtitle: "Game Description", price: nil)),
    ]
    
    static let essentialApps: [Item] = [
        .app(App(promotedHeadline: nil, title: "Facebook", subtitle: "Game Description", price: 0.99)),
        .app(App(promotedHeadline: nil, title: "Patriots", subtitle: "Game Description", price: nil)),
        .app(App(promotedHeadline: nil, title: "theScore", subtitle: "Game Description", price: 3.99)),
        .app(App(promotedHeadline: nil, title: "GroupMe", subtitle: "Game Description", price: 0.99)),
        .app(App(promotedHeadline: nil, title: "Pintrest", subtitle: "Game Description", price: 4.99)),
        .app(App(promotedHeadline: nil, title: "Vrbo", subtitle: "Game Description", price: 0.99)),
        .app(App(promotedHeadline: nil, title: "Developer", subtitle: "Game Description", price: 0.99)),
    ]

    static let categories: [Item] = [
        .category(StoreCategory(name: "AR Games")),
        .category(StoreCategory(name: "Indie")),
        .category(StoreCategory(name: "Strategy")),
        .category(StoreCategory(name: "Racing")),
        .category(StoreCategory(name: "Puzzle")),
        .category(StoreCategory(name: "Board")),
        .category(StoreCategory(name: "Family")),
    ]
}
