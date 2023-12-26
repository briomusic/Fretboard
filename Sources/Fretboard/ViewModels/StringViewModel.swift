import Foundation
import SwiftUI

class StringViewModel {
	var string: FretboardConfiguration.String?
	var fretColors = [FingeringColors]()
	var stringPosition: StringPosition {
		guard let string else {return .fretNumbers}
		switch string {
		case .e2:
			return .first
		case .a2, .d3, .g3, .b3:
			return .middle
		case .e4:
			return .last
		}
	}

	init(string: FretboardConfiguration.String?, fretColors: [FingeringColors]) {
		self.string = string
		self.fretColors = fretColors
	}
}
