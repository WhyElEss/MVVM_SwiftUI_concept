//
//  ContentView.swift
//  Shared
//
//  Created by Юрий Станиславский on 26.11.2020.
//

import SwiftUI

struct ContentView: View {
//    @ObservedObject var viewModel: ContentViewModel
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        VStack {
            Text(viewModel.name)
                .padding()
            Text(viewModel.age)
                .padding()
            Button("Change Name") {
                // change the name to Bob
                viewModel.changeName("Bob")
            }
        }
        .font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
