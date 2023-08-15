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
                Spacer()
                List {
                    RequestCellView(text: "Requested", colour: .green)
                    RequestCellView(text: "In Progress", colour: .orange)
                    RequestCellView(text: "In Progress", colour: .orange)
                    RequestCellView(text: "Delivered", colour: .blue)
                    RequestCellView(text: "Cancelled", colour: .red)
                    RequestCellView(text: "Requested", colour: .green)
                }
                .refreshable {
                    print("make api call")
                }
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

struct RequestCellView: View {
    var text: String
    var colour: Color
    
    var body: some View  {
        VStack(spacing: 0) {
            HStack {
                Spacer()
                VStack(alignment: .leading, spacing: 0) {
                    Text(text)
                        .padding(4)
                        .frame(width: 105, height: 17)
                        .background(colour)
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
    }
}

//struct RequestStatusView_Previews: PreviewProvider {
//    static var previews: some View {
//        RequestStatusView()
//    }
//}
