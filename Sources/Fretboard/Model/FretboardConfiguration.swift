import Foundation
import SwiftUI

public struct FretboardConfiguration {
	public enum String: CaseIterable {
		case e2
		case a2
		case d3
		case g3
		case b3
		case e4
	}

	let fretCount: Int
	let fingerings: Dictionary<String, [FingeringColors]>
	
	static let mock = FretboardConfiguration(fingerings: [
		.a2: [FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.red, .blue]),
			  FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.red, .blue]),
			  FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.red, .clear]),
			  FingeringColors(colors:[.clear, .blue]),
			  FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.red, .blue]),
			  FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.red, .blue])],
		.e4: [FingeringColors(colors:[.clear, .blue]),
			  FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.red, .blue]),
			  FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.red, .blue]),
			  FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.red, .blue]),
			  FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.red, .blue]),
			  FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.red, .clear])],
		.g3: [FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.red, .blue]),
			  FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.red, .blue]),
			  FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.red, .blue]),
			  FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.red, .clear]),
			  FingeringColors(colors:[.clear, .blue]),
			  FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.red, .blue])],
		.d3: [FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.red, .clear]),
			  FingeringColors(colors:[.clear, .blue]),
			  FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.red, .blue]),
			  FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.red, .blue]),
			  FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.red, .blue]),
			  FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.red, .blue])],
		.b3: [FingeringColors(colors:[.red, .blue]),
			  FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.red, .blue]),
			  FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.red, .clear]),
			  FingeringColors(colors:[.clear, .blue]),
			  FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.red, .blue]),
			  FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.red, .blue]),
			  FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.clear, .clear])],
		.e2: [FingeringColors(colors:[.clear, .blue]),
			  FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.red, .blue]),
			  FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.red, .blue]),
			  FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.red, .blue]),
			  FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.red, .blue]),
			  FingeringColors(colors:[.clear, .clear]),
			  FingeringColors(colors:[.red, .clear])]
	])
	
	public init(fretCount: Int = 12, fingerings: Dictionary<String, [FingeringColors]>) {
		self.fretCount = fretCount
		self.fingerings = fingerings
	}
}
