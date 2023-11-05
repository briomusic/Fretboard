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

	let fingerings: Dictionary<String, [[Color]]>
	
	static let mock = FretboardConfiguration(fingerings: [
		.a2: [[.clear, .clear], [.clear, .clear], [.red, .blue], [.clear, .clear], [.red, .blue], [.clear, .clear], [.red, .clear], [.clear, .blue], [.clear, .clear], [.red, .blue], [.clear, .clear], [.red, .blue]],
		   .e4: [[.clear, .blue], [.clear, .clear], [.red, .blue], [.clear, .clear], [.red, .blue], [.clear, .clear], [.clear, .clear], [.red, .blue], [.clear, .clear], [.red, .blue], [.clear, .clear], [.red, .clear]],
		   .g3: [[.clear, .clear], [.red, .blue], [.clear, .clear], [.clear, .clear], [.red, .blue], [.clear, .clear], [.red, .blue], [.clear, .clear], [.red, .clear], [.clear, .blue], [.clear, .clear], [.red, .blue]],
		   .d3: [[.clear, .clear], [.red, .clear], [.clear, .blue], [.clear, .clear], [.red, .blue], [.clear, .clear], [.red, .blue], [.clear, .clear], [.clear, .clear], [.red, .blue], [.clear, .clear], [.red, .blue]],
		   .b3: [[.red, .blue], [.clear, .clear], [.red, .blue], [.clear, .clear], [.red, .clear], [.clear, .blue], [.clear, .clear], [.red, .blue], [.clear, .clear], [.red, .blue], [.clear, .clear], [.clear, .clear]],
		   .e2: [[.clear, .blue], [.clear, .clear], [.red, .blue], [.clear, .clear], [.red, .blue], [.clear, .clear], [.clear, .clear], [.red, .blue], [.clear, .clear], [.red, .blue], [.clear, .clear], [.red, .clear]]
	   ])
	
	public init(fingerings: Dictionary<String, [[Color]]>) {
		self.fingerings = fingerings
	}
}
