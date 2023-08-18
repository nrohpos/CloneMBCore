//
//  File.swift
//  
//
//  Created by Eang Tithsophorn on 18/8/23.
//

import Foundation
import Moya
import RxSwift
public class AppService {
    public static let shared = AppService()
    private let disposeBag = DisposeBag()
    
    public func fetchData(endPoint: EndPoint) -> Observable<MovieResponse>  {
        Observable.create { obs in
            let provider = MoyaProvider<EndPoint>()
             provider.request(endPoint) { result in
                 switch result {
                 case let .success(moyaResponse):
                     let data = moyaResponse.data
                     let statusCode = moyaResponse.statusCode
                     // do something with the response data or statusCode

                     if let result = try? JSONDecoder().decode(MovieResponse.self, from: data) {
                         obs.onNext(result)
                     }else {
                         obs.onError(MoyaError.requestMapping("Something went wrong"))
                     }
                 case let .failure(error):
                     print(error.localizedDescription)
                     obs.onError(error)
                 }
             }
            return Disposables.create()
        }
       
    }
}
