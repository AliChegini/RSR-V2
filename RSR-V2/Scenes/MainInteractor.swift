//
//  MainInteractor.swift
//  RSR-V2
//
//  Created by Ehsan on 20/09/2019.
//  Copyright (c) 2019 Ali C. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates
//  For more information visit: http://clean-swift.com
//

import UIKit

protocol MainBusinessLogic {
  func doSomething(request: Main.Something.Request)
}

protocol MainDataStore {
  //var name: String { get set }
}

class MainInteractor: MainBusinessLogic, MainDataStore {
  var presenter: MainPresentationLogic?
  var worker: MainWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: Main.Something.Request) {
    worker = MainWorker()
    worker?.doSomeWork()
    
    let response = Main.Something.Response()
    presenter?.presentSomething(response: response)
  }
}
