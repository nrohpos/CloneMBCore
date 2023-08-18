//
//  Env.swift
//  
//
//  Created by Eang Tithsophorn on 18/8/23.
//

import Foundation

enum Env: String {
    case sit = "Development"
    case uat = "Stating"
    case prod = "Production"
    
    
    
    var baseUrl: String {
        switch self {
            case .sit:
                return "https://api.themoviedb.org/3/"
            default:
                return "https://api.themoviedb.org/3/"
        }
    }
}


class EnvConfig {
    static let shared = EnvConfig()
    var env: Env = .sit
    
    public func setEnv(_ env: Env)  {
        self.env = env
    }
}
