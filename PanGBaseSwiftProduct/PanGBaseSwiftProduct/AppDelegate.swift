//
//  AppDelegate.swift
//  PanG.BaseSwiftProduct
//
//  Created by PanG on 2017/6/8.
//  Copyright © 2017年 PanG. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        let tabbarController = UITabBarController()
        window?.rootViewController = tabbarController
        
        let hc = addChildrenController(vcName: "VFTHomeController", name: "首页", imageName: "poi_1")
        tabbarController.addChildViewController(hc)
        
        let cc = addChildrenController(vcName: "VFTCategoryController", name: "分类", imageName: "poi_1")
        tabbarController.addChildViewController(cc)
        
        let dc = addChildrenController(vcName: "VFTDiscoverController", name: "发现", imageName: "poi_1")
        tabbarController.addChildViewController(dc)
        
        let pc = addChildrenController(vcName: "VFTPersonalController", name: "我", imageName: "poi_1")
        tabbarController.addChildViewController(pc)
        return true
    }
    
    func addChildrenController(vcName:String , name:String , imageName:String) -> UINavigationController {

        let VC = swiftClassFromString(className: vcName)
        VC?.title = name
        let navc = UINavigationController(rootViewController: VC!)
        navc.tabBarItem.title = name
        navc.tabBarItem.image = UIImage(named: imageName)
        return navc
    }
    
    func swiftClassFromString(className: String) -> UIViewController? {
        //方法 NSClassFromString 在Swift中已经不起作用了no effect，需要适当更改
        //官方文档方法：let myPersonClass: AnyClass? = NSClassFromString("MyGreatApp.Person")
        if  let appName = Bundle.main.object(forInfoDictionaryKey: "CFBundleName") as? String {
            let classStringName = "_TtC\(appName.characters.count)\(appName)\(className.characters.count)\(className)"
            print(classStringName)
            let  cls: AnyClass? = NSClassFromString(classStringName)
            assert(cls != nil, "class not found,please check className")
            if let viewClass = cls as? UIViewController.Type {
                let view = viewClass.init()
                return view
            }
        }  
        return nil;  
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

