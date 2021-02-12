//
//  ContentView.swift
//  MVVM Practice
//
//  Created by Justin Viasus on 2/12/21.
//

import SwiftUI

// View
struct ContentView: View {
    @StateObject var viewModel = ContentViewModel() // StateObject allows the View to keep a reference to the ViewModel and observe any changes (doesn't create a new instance of ContentView() each time
    
    var body: some View {
        VStack {
            Text(viewModel.name)
                .padding()
            Text(viewModel.age)
                .padding()
            Button("Change Name") {
                // Change the name to Bob
                viewModel.changeName("Bob")
            }
        }.font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
