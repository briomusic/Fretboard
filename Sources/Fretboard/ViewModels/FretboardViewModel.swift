import Foundation
import SwiftUI

public class FretboardViewModel {
	let fretMarkers = FretMarker.standard
	let fretboard: FretboardConfiguration
	
	public init(fretboard: FretboardConfiguration) {
		self.fretboard = fretboard
	}

	func stringViewModel(for string: FretboardConfiguration.String?) -> StringViewModel {
		var fretColors = [[Color]]()
		if let string,
		   let colors = fretboard.fingerings[string] {
			fretColors = colors
		}
		return StringViewModel(string: string, fretMarkers: fretMarkers, fretColors: fretColors)
	}
}
