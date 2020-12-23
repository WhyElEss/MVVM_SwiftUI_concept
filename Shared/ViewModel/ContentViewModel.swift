//
//  ContentViewModel.swift
//  MVVM
//
//  Created by Юрий Станиславский on 26.11.2020.
//

import SwiftUI

class ContentViewModel: ObservableObject {
    @Published private var alice = Person(name: "Alice", birthday: Date())
    
    var name: String {
        alice.name
    }
    
    var age: String {
        // date magic -> age string
        return "32"
    }
    
    // Intent
    func changeName(_ name: String) {
        alice.name = name
    }
}
