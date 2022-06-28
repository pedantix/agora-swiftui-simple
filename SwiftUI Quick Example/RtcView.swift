//
//  RtcView.swift
//  SwiftUI Quick Example
//
//  Created by shaun on 6/28/22.
//

import Foundation
import SwiftUI
import AgoraRtcKit

struct RtcView: UIViewRepresentable {
    @EnvironmentObject private var rtcManager: RTCManager
    let uid: UInt

    typealias UIViewType = UIView

    func makeUIView(context: Context) -> UIView {
        let view  = UIView()
        rtcManager.setupCanvasFor(view, uid)
        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) {
        rtcManager.setupCanvasFor(uiView, uid)
    }
}
