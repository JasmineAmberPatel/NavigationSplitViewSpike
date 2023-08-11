//
//  RequestStatusView.swift
//  NavigationSplitView
//
//  Created by Jasmine Patel on 11/08/2023.
//

import SwiftUI

struct RequestStatusView: View {
    @Binding var visibility: NavigationSplitViewVisibility
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
                .opacity(0.3)
            VStack(alignment: .center) {
                Text("Request status")
                    .font(.title)
                    .padding(.bottom, 10)
                VStack(spacing: 0) {
                    HStack {
                        Spacer()
                        VStack(alignment: .leading) {
                            Text("Requested")
                                .frame(width: 105, height: 17)
                                .background(Color.green)
                                .foregroundColor(Color.black)
                                .cornerRadius(10)
                        }
                    }
                    VStack(alignment: .leading) {
                        Text("Forena")
                        Text("Womens good energy T-shirt")
                        Text("XS")
                    }
                }
                .padding()
                .background(.white)
                Spacer()
                Button {
                    visibility = .detailOnly
                } label: {
                    Text("RESET")
                        .foregroundColor(Color.black)
                        .cornerRadius(10)
                }
            }
        }
    }
}

//struct RequestStatusView_Previews: PreviewProvider {
//    static var previews: some View {
//        RequestStatusView()
//    }
//}
