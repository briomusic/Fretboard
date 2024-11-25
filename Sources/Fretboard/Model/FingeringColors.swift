//
//  File.swift
//  
//
//  Created by Brio Taliaferro on 26.12.23.
//

import Foundation
import SwiftUI

/**
 Colors displayed on one fret on one string
 */
public struct FingeringColors: Identifiable, Equatable {
	public let id = UUID()
	public var colors: [Color]
	
	public init(colors: [Color]) {
		self.colors = colors
	}
	
	static public func == (lhs: FingeringColors, rhs: FingeringColors) -> Bool {
		lhs.colors == rhs.colors
	}
}

