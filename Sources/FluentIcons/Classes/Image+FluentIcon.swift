//
//  File.swift
//  
//
//  Created by Abdul Chathil on 12/30/20.
//

import SwiftUI

public extension Image {
    init(_ fluent: FluentIcon) {
        self.init(fluent.resourceString, bundle: .module)
    }
}
