//
//  File.swift
//
//
//  Created by Abdul Chathil on 12/30/20.
//

import SwiftUI

public extension Image {
  init(fluent: FluentIcon) {
    self.init(fluent.resourceString, bundle: .init(for: FluentIconBundle.self))
  }

  init(_ fluent: FluentIcon) {
    self.init(fluent.resourceString, bundle: .init(for: FluentIconBundle.self))
  }
}

// MARK: - FluentIconBundle

private class FluentIconBundle: Bundle, @unchecked Sendable {}

public typealias Icon = FluentIcon
