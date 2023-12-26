import Foundation
import SwiftUI

public class FretboardViewModel {
	let minZoom: CGFloat
	let maxZoom: CGFloat
	let fretboard: FretboardConfiguration
	
	public init(fretboard: FretboardConfiguration, minZoom: CGFloat = 1, maxZoom: CGFloat = 2) {
		self.fretboard = fretboard
		self.minZoom = minZoom
		self.maxZoom = maxZoom
	}
	
	func stringViewModel(for string: FretboardConfiguration.String?) -> StringViewModel {
		var fretColors = [FingeringColors]()
		if let string,
		   let colors = fretboard.fingerings[string] {
			fretColors = colors
		}
		return StringViewModel(string: string, fretColors: fretColors)
	}
	
	func fretMarkersViewModel() -> FretMarkersViewModel {
		FretMarkersViewModel(fretMarkers: fretMarkers())
	}
	
	private func fretMarkers() -> [FretMarker] {
		Array(FretMarker.standard.prefix(fretboard.fretCount))
	}
}
