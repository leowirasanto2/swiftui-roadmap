//
//  Roadmap.swift
//  SwiftUIRoadMap
//
//  Created by Leo Wirasanto Laia on 03/07/24.
//

import Foundation

enum Roadmap {
    case views(type: ViewsRoadmap)
    case data
    case animations
    case interaction
    case pattern
}

enum ViewsRoadmap {
    case compose(type: ViewComposeRoadmap)
    case modifier
}

enum ViewComposeRoadmap {
    case navigation
    case containerViews
    case layoutSystem
}
