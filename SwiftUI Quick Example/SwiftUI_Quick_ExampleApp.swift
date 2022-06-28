//
//  SwiftUI_Quick_ExampleApp.swift
//  SwiftUI Quick Example
//
//  Created by shaun on 6/28/22.
//

import SwiftUI

@main
struct SwiftUI_Quick_ExampleApp: App {
    @StateObject var rtcManager = RTCManager()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(rtcManager)
        }
    }
}
