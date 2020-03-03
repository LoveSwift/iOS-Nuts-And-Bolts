//
//  RxNetworkingInteractor.swift
//
//  Created by Filip Gulan on 25/04/2019.
//  Copyright (c) 2019 Infinum. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import Foundation
import RxSwift
import Alamofire

final class RxNetworkingInteractor {

    private let service: APIService
    private let sessionManager: SessionManager

    init(service: APIService = .instance, sessionManager: SessionManager = .default) {
        self.service = service
        self.sessionManager = sessionManager
    }
}


// MARK: - Extensions -

extension RxNetworkingInteractor: RxNetworkingInteractorInterface {

    func login(email: String, password: String) -> Single<Void> {
        return service.rx
            .requestCompletion(
                router: LoginRouter.login(email: email, password: password),
                session: sessionManager.session
            )
            .andThen(Single.just(()))
    }

}
