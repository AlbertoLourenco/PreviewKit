//
//  ViewCodePreviewApp.swift
//  UIKitPreview
//
//  Created by Alberto Lourenço on 30/07/22.
//

import SwiftUI

@main
struct AppMain: App {
    var body: some Scene {
        WindowGroup {
            PreviewKit(view: SampleView())
        }
    }
}
