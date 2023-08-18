//
//  File.swift
//  
//
//  Created by Eang Tithsophorn on 18/8/23.
//

import Foundation
import Moya
public class AppService {
  public static let shared = AppService()
    
    public func dataFetch() {
       let provider = MoyaProvider<EndPoint>()
        provider.request(.trending) { result in
            switch result {
            case let .success(moyaResponse):
                let data = moyaResponse.data
                let statusCode = moyaResponse.statusCode
                // do something with the response data or statusCode
                
                let json = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String:AnyObject]
                          print(json)
            case let .failure(error):
                print(error.localizedDescription)
                // this means there was a network failure - either the request
                // wasn't sent (connectivity), or no response was received (server
                // timed out).  If the server responds with a 4xx or 5xx error, that
                // will be sent as a ".success"-ful response.
            }
        }
    }
}
