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
