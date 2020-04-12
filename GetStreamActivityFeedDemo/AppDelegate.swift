//
//  AppDelegate.swift
//  GetStreamActivityFeedDemo
//
//  Created by Ahad Sheriff on 4/11/20.
//  Copyright © 2020 Ahad Sheriff. All rights reserved.
//

import UIKit
import GetStream
import GetStreamActivityFeed

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        Client.config = .init(apiKey: "3ah5azxkgzkh",
                              appId: "75341")
        Client.shared.setupUser(GetStreamActivityFeed.User(name: "User One",
                                                           id: "user-one"),
                                                           token: "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidXNlci1vbmUifQ.iBPETzSNyHhbs0O8opHyLEP8durw0UGLXuZOhAaeJVY") { (result) in
          if result.error == nil, let viewController = self.window?.rootViewController as? ViewController {
            viewController.reloadData()
          }
        }

        return true
    }
}
