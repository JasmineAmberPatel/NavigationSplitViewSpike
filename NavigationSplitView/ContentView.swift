//
//  ContentView.swift
//  NavigationSplitView
//
//  Created by Jasmine Patel on 10/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var visibility: NavigationSplitViewVisibility = .detailOnly
    
    var body: some View {
        NavigationSplitView(columnVisibility: $visibility) {
            RequestStatusView(visibility: $visibility)
                .toolbar(.hidden, for: .navigationBar)
        } detail: {
            ProductLookupView(visibility: $visibility)
                .toolbar(.hidden, for: .navigationBar)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
