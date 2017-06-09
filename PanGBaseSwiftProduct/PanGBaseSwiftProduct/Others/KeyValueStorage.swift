//
//  KeyValueStorage.swift
//  Lift
//
//  Created by WG on 2017/4/14.
//  Copyright © 2017年 WG. All rights reserved.
//

import Foundation

public class KeyValueStorage:NSObject {
    public class var shared:KeyValueStorage {return _shared}
    static var _shared = KeyValueStorage()
    lazy var cache = Dictionary<String, Any>()
    subscript(_ key:String)->Any?{
        set{
            cache[key] = newValue
            UserDefaults.standard.setValue(newValue, forKey: key)
            UserDefaults.standard.synchronize()
        }
        get{
            var v = cache[key]
            if v == nil {
                if let n = UserDefaults.standard.value(forKey: key) {
                    cache[key] = n
                    v = n
                }
            }
            return v
        }
    }
}
