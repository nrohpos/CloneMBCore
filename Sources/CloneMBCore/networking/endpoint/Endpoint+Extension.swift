//
//  AppService.swift
//  
//
//  Created by Eang Tithsophorn on 18/8/23.
//

import Foundation
import Moya

extension EndPoint: TargetType {
    
    var baseURL: URL {
        URL(string: EnvConfig.shared.env.baseUrl)!
    }
    
    var path: String {
        switch self {
        case .trending:
            return ""
        default:
            return ""
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .trending:
            return .get
        default:
            return .get
        }
    }
    
    var task: Moya.Task {
        switch self {
        case .trending:
            return .requestPlain
        default:
            return .requestPlain
        }
    }
    
    var headers: [String : String]? {
        switch self {
            case .trending:
                return ["Content-type": "application/json"]
            default:
                return nil
        }
    }
    
    
}
