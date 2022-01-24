//
//  Router.swift
//  VstackNavigation
//
//  Created by Zack Jung on 1/24/22.
//

import Foundation
import Combine

class Router: ObservableObject {
    static let shared = Router()
    
    @Published var selection: Tab = .Main
}

enum Tab {
    case Main
    case Second
    case Third
    case Fourth
    case Fifth
}
