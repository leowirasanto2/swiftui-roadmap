//
//  Roadmap.swift
//  SwiftUIRoadMap
//
//  Created by Leo Wirasanto Laia on 03/07/24.
//

import Foundation

enum Roadmap: Int, CaseIterable {
    case views = 0
    case data
    case animations
    case interaction
    case pattern
    case unknown
    
    var description: String {
        switch self {
        case .views:
            return "Views"
        case .data:
            return "Data"
        case .animations:
            return "Animations"
        case .interaction:
            return "Interaction"
        case .pattern:
            return "Pattern"
        case .unknown:
            return "Please select roadmap"
        }
    }
}

enum ViewsRoadmap: Int, CaseIterable {
    case compose = 0
    case modifier
    case unknown
    
    var description: String {
        switch self {
        case .compose:
            return "Compose View"
        case .modifier:
            return "View Modifier"
        case .unknown:
            return "Please select roadmap"
        }
    }
}

enum ViewComposeRoadmap: Int, CaseIterable {
    case navigation = 0
    case containerViews
    case layoutSystem
    case unknown
    
    var description: String {
        switch self {
        case .navigation:
            return "Navigation"
        case .containerViews:
            return "Container Views"
        case .layoutSystem:
            return "Layout System"
        case .unknown:
            return "Please select roadmap"
        }
    }
}

enum NavigationRoadmap: Int, CaseIterable {
    case navigationLink = 0
    case navigationBarItems
    case splitView
    case pageView
    case tabView
    case tabItem
    case alert
    case sheet
    case actionSheet
    case popOver
    case modalView
    case contextMenu
    
    var description: String {
        switch self {
        case .navigationLink:
            return "Navigation Link"
        case .navigationBarItems:
            return "Navigation Bar Items"
        case .splitView:
            return "Split View"
        case .pageView:
            return "Page View"
        case .tabView:
            return "Tab View"
        case .tabItem:
            return "Tab Item"
        case .alert:
            return "Alert"
        case .sheet:
            return "Sheet"
        case .actionSheet:
            return "Action Sheet"
        case .popOver:
            return "Pop Over"
        case .modalView:
            return "Modal View"
        case .contextMenu:
            return "Context Menu"
        }
    }
}

enum ContainerViewRoadmap: Int, CaseIterable {
    case stackView
    case groupView
    case scrollAndListView
    case gridView
    
    var description: String {
        switch self {
        case .stackView:
            return "Stack View"
        case .groupView:
            return "Group View"
        case .scrollAndListView:
            return "Scroll and ListView"
        case .gridView:
            return "Grid View"
        }
    }
}
