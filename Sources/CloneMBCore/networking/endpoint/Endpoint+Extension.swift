//
//  AppService.swift
//  
//
//  Created by Eang Tithsophorn on 18/8/23.
//

import Foundation
import Moya

extension EndPoint: TargetType {
    
   public var baseURL: URL {
        URL(string: EnvConfig.shared.env.baseUrl)!
    }
    
    public var path: String {
        switch self {
        case .trending:
            return "trending/all/week"
        default:
            return ""
        }
    }
    
    public var method: Moya.Method {
        switch self {
        case .trending:
            return .get
        default:
            return .get
        }
    }
    
    public var task: Moya.Task {
        switch self {
        case .trending:
            return .requestParameters(parameters: ["api_key": EnvConfig.shared.apiKey], encoding: URLEncoding.queryString)
        default:
            return .requestPlain
        }
    }
    
    public var headers: [String : String]? {
        switch self {
            case .trending:
                return ["Content-type": "application/json"]
            default:
                return nil
        }
    }
    
    
}
