//
//  MVPViewOutput.swift
//  MVPtest
//
//  Created by Алекс Смык on 23.06.22.
//

import Foundation
//протокол отвечающий за связь с Presenter
protocol MVPViewOutput: AnyObject {
    
    func didPressedAction()
}
