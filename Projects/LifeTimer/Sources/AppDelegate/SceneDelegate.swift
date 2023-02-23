//
//  SceneDelegate.swift
//  LifeTimer
//
//  Created by 고병학 on 2023/01/24.
//

import RIBs
import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    var launchRouter: LaunchRouting?
    
    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window: UIWindow = UIWindow(windowScene: windowScene)
        self.window = window
        
        let result = RootBuilder(dependency: AppComponent())
        self.launchRouter = result.build()
        self.launchRouter?.launch(from: window)
    }
    
    func sceneDidDisconnect(_ scene: UIScene) { }
    
    func sceneDidBecomeActive(_ scene: UIScene) { }
    
    func sceneWillResignActive(_ scene: UIScene) { }
    
    func sceneWillEnterForeground(_ scene: UIScene) { }
    
    func sceneDidEnterBackground(_ scene: UIScene) { }
}
