import SwiftUI

struct Category: Identifiable {
    var id: String
    var label: LocalizedStringKey
    var elements: [CaseStudy]
}

struct CaseStudy: Identifiable, Equatable {
    var id: ID
    var label: LocalizedStringKey
    var description: LocalizedStringKey?

    enum ID: CaseIterable {
        case ifElse
        case scrollView
        case scrollViewVStackForEach
        case staticList
        case list
        case lazyVGrid
        case navigationStack
        case tabView
    }
}

let categories: [Category] = [
    Category(
        id: "simple",
        label: "Simple views",
        elements: [
            CaseStudy(id: .ifElse, label: "if/else"),
        ]
    ),
    Category(
        id: "scrollview",
        label: "ScrollView",
        elements: [
            CaseStudy(id: .scrollView, label: "ScrollView with static content"),
            CaseStudy(
                id: .scrollViewVStackForEach,
                label: "ScrollView with dynamic content",
                description: "A VStack with dynamic content, embedded in a ScrollView."
            ),
        ]
    ),
    Category(
        id: "list",
        label: "List",
        elements: [
            CaseStudy(id: .list, label: "List with dynamic content"),
            CaseStudy(
                id: .staticList,
                label: "List with static content",
                description: "A List with a bunch of hardcoded child views, not using ForEach."
            ),
        ]
    ),
    Category(
        id: "lazy",
        label: "Lazy containers",
        elements: [
            CaseStudy(id: .lazyVGrid, label: "LazyVGrid"),
        ]
    ),
    Category(
        id: "navigation",
        label: "Navigation containers",
        elements: [
            CaseStudy(
                id: .navigationStack,
                label: "NavigationStack",
                description: "A NavigationStack with infinite levels of drill-down."
            ),
            CaseStudy(
                id: .tabView,
                label: "TabView",
                description: "TabView with multiple tabs, each with static content."
            ),
        ]
    ),
]
