//
//  FavouritiesView.swift
//  Food Recipe App
//
//  Created by Sunny Shehzad on 02/04/22.
//

import SwiftUI

struct FavouritiesView: View {
    var body: some View {
        NavigationView {
            Text("Favorities")
                .navigationTitle("Favorities")
        }
        .navigationViewStyle(.stack)
    }
}

struct FavouritiesView_Previews: PreviewProvider {
    static var previews: some View {
        FavouritiesView()
    }
}
