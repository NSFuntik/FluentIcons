//
//  File.swift
//  
//
//  Created by Abdul Chathil on 12/30/20.
//

import SwiftUI

public extension Image {
    init(fluent: FluentIcon) {
        self.init(fluent.resourceString, bundle: .module)
    }
}
