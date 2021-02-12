//
//  ContentViewModel.swift
//  MVVM Practice
//
//  Created by Justin Viasus on 2/12/21.
//

import Foundation
import SwiftUI

// ViewModel
class ContentViewModel: ObservableObject { // the ViewModel has to notify the View when the Model changed, and we do this by making sure the ContentViewModel conforms to the ObservableObject protocol
    
    @Published private var alice = Person(name: "Alice", birthday: Date()) // var because it changes
    // @Published allows the ViewModel to notify the View that something has changed in the ViewModel (i.e. in the Model). The View will be notified because it is keeping track of an instance of the ViewModel
    
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

struct ContentViewModel_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
