//
//  ContentView.swift
//  Food Recipe App
//
//  Created by Sunny Shehzad on 02/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBar()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(RecipiesViewModel())
    }
}
