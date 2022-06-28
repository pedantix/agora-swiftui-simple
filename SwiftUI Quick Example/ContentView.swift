//
//  ContentView.swift
//  SwiftUI Quick Example
//
//  Created by shaun on 6/28/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var rtcManager: RTCManager
    var body: some View {
        GeometryReader { geo in
            let smallest = min(geo.size.height, geo.size.width) - 10
            List(rtcManager.sortedUids, id: \.self) { uid in
                    RtcView(uid: uid)
                        .frame(width: smallest, height: smallest, alignment: .center)
                        .listRowInsets(.init())
                        .padding(5)

            }
            .listStyle(PlainListStyle())
            .listRowSeparator(.hidden)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
