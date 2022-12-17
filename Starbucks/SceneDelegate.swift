//
//  SceneDelegate.swift
//  Starbucks
//
//  Created by 김혜수 on 2022/10/25.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    var imageView: UIImageView?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        print("sceneDidDisconnect")
        
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        print("sceneDidBecomeActive")
        if let imageView = imageView {
                    imageView.removeFromSuperview()
                }

    }

    func sceneWillResignActive(_ scene: UIScene) {
        //여기서 위에 뭐 씌워주기
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
        print("sceneWillResignActive")
        guard let window = window else {
                    return
                }
                imageView = UIImageView(frame: window.frame)
                imageView?.image = UIImage(named: "image")
                window.addSubview(imageView!)

    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
        print("sceneWillEnterForeground")

    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
        print("sceneDidEnterBackground")

    }


}

