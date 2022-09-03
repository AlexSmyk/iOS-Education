//
//  MVPPresenter.swift
//  MVPtest
//
//  Created by Алекс Смык on 23.06.22.
//

import Foundation

class MVPPresenter: MVPViewOutput {
    
    weak var view: MVPViewInput!
    var dataManager: DataManager!
    
    func didPressedAction() {
        let numbers = dataManager.obtainNumbers()
        view.showNumbers(numbers)
    }
    
    
}
