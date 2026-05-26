//
//  MainTabBarController.swift
//  TableViewChallenge
//
//  Created by Gabriel Merenfeld on 26/05/26.
//

import UIKit

final class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        createTab(
            viewController: ViewController(),
            imageString: "house",
            title: "Início"
        )
        
        createTab(
            viewController: ViewController(),
            imageString: "house",
            title: "Início"
        )
        
        createTab(
            viewController: ViewController(),
            imageString: "house",
            title: "Início"
        )
        
        createTab(
            viewController: ViewController(),
            imageString: "house",
            title: "Início"
        )
        
        createTab(
            viewController: ViewController(),
            imageString: "house",
            title: "Início"
        )
        
        customizeTabBarApperance()
    }
    
    private func customizeTabBarApperance() {
        let apperance = UITabBarAppearance()
        apperance.configureWithOpaqueBackground()
        apperance.backgroundColor = .white
        apperance.backgroundEffect = nil
        
        tabBar.standardAppearance = apperance
        tabBar.scrollEdgeAppearance = apperance
        tabBar.isTranslucent = false
        tabBar.tintColor = .blue
        tabBar.unselectedItemTintColor = .gray
    }
    
    private func createTab(
        viewController: UIViewController,
        imageString: String,
        title: String
    ) {
        let navController = UINavigationController(rootViewController: viewController)
        
        navController.tabBarItem = UITabBarItem(
            title: title,
            image: UIImage(systemName: imageString),
            selectedImage: UIImage(systemName: "\(imageString).fill")
        )
        
        viewControllers?.append(navController)
    }
}
