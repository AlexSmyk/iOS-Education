//
//  MVPViewInput.swift
//  MVPtest
//
//  Created by Алекс Смык on 23.06.22.
//

import Foundation
//протокол отвечающий за методы связанные с вызовом внутри View
protocol MVPViewInput: AnyObject {
    func showNumbers(_ numbers:[Int ])
}
