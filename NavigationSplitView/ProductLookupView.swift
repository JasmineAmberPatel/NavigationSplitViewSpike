//
//  ProductLookupView.swift
//  NavigationSplitView
//
//  Created by Jasmine Patel on 11/08/2023.
//

import SwiftUI

struct ProductLookupView: View {
    
    @Binding var visibility: NavigationSplitViewVisibility
    @State private var productNumber: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("logo")
                Spacer()
                TextField("enter product number", text: $productNumber)
                    .padding()
                    .foregroundColor(.black)
                    .frame(width: 400, height: 56)
                    .background(Color.gray.opacity(0.3))
                NavigationLink("Search") {
                    ProductView(visibility: $visibility)
                }
                .font(.title)
                .frame(width: 400, height: 56)
                .background(Color.green)
                .foregroundColor(Color.black)
                Spacer()
            }
        }
    }
}

//struct ProductLookupView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductLookupView()
//    }
//}
