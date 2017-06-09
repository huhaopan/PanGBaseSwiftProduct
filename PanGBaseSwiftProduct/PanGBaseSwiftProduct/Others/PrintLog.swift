
//
//  PrintLog.swift
//  PanGBaseSwiftProduct
//
//  Created by PanG on 2017/6/9.
//  Copyright © 2017年 PanG. All rights reserved.
//

import Foundation

func PrintLog<T>(message: T,
                    file: String = #file,
                  method: String = #function,
                    line: Int = #line)
{
    #if DEBUG
        print("\((file as NSString).lastPathComponent)[\(line)], \(method): \(message)")
    #endif
}
