//
//  DataManager.swift
//  MVPtest
//
//  Created by Алекс Смык on 23.06.22.
//

import Foundation

protocol DataManager {
    func obtainNumbers() -> [Int]
}

class DataManagerImplementation: DataManager {
    
    func obtainNumbers() -> [Int] {
        return [1,2,3,4,5]
    }
}
