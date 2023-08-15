//
//  ProductView.swift
//  NavigationSplitView
//
//  Created by Jasmine Patel on 11/08/2023.
//

import SwiftUI

struct ProductView: View {
    @Binding var visibility: NavigationSplitViewVisibility
    @State private var showingAlert = false
    
    var body: some View {
        HStack {
            Color.green.ignoresSafeArea()
                .frame(width: 25)
            VStack {
                HStack {
                    Spacer()
                    Image("logo")
                    Spacer()
                    NavigationLink("Search Again", destination: ProductLookupView(visibility: $visibility))
                        .font(.title2)
                        .padding()
                        .foregroundColor(.black)
                        .background(.green)
                    .padding(.trailing, 10)
                }
                HStack {
                    Image("t")
                        .padding()
                    VStack(alignment: .leading) {
                        Spacer()
                        VStack(alignment: .leading) {
                            Text("Forena")
                                .padding(.bottom)
                                .font(.largeTitle)
                                .bold()
                            Text("Womens good energy T-shirt")
                                .font(.title2)
                                .padding(.bottom, 5)
                            Text("4091880")
                                .font(.title3)
                                .foregroundColor(Color.gray)
                                .padding(.bottom, 5)
                            Text("Ecru/Aqua")
                                .font(.title3)
                                .foregroundColor(Color.gray)
                                .padding(.bottom, 5)
                            Text("£27.99")
                                .font(.title3)
                                .bold()
                        }
                        .padding(.bottom, 25)
                        VStack(alignment: .leading) {
                            Text("Need a new size?")
                                .padding(.bottom)
                                .font(.title)
                                .underline()
                            Text("Make a selection below and we will bring it to your fitting room.")
                        }
                        .padding(.bottom, 25)
                        VStack(alignment: .leading) {
                            Text("Size")
                                .font(.title3)
                                .bold()
                            Image("size")
                                .padding(.bottom, 10)
                        }
                        VStack(alignment: .leading) {
                            Button {
                                visibility = .all
                                showingAlert = true
                            } label: {
                                Text("Request")
                                    .font(.title)
                                    .frame(width: 390, height: 56)
                                    .background(Color.green)
                                    .foregroundColor(Color.black)
                                    .padding(.trailing, 10)
                            }
                            .alert("Your Item has been successfully requested.", isPresented: $showingAlert) {
                                Button("OK", role: .cancel) { }
                            }
                        }
                        Spacer()
                    }
                }
            }
            Spacer()
        }
        .toolbar(.hidden, for: .navigationBar)
    }
}

//struct ProductView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductView(visibility: $visibility)
//    }
//}
