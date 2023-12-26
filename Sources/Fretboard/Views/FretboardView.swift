import SwiftUI

public struct FretboardView: View {
	let viewModel: FretboardViewModel
	
	@State private var zoomFactor = CGFloat(1)
	@State private var currentAmount = 0.0
	
	public var body: some View {
		GeometryReader { proxy in
			byStrings(proxy: proxy)
		}
	}
	
	var magnification: some Gesture {
		MagnificationGesture()
			.onChanged { amount in
				currentAmount = amount - 1
				if zoomFactor + currentAmount > viewModel.minZoom,
				   zoomFactor + currentAmount < viewModel.maxZoom {
					zoomFactor += currentAmount
				}
				print("amount: \(currentAmount) zoom: \(zoomFactor)")
			}
			.onEnded { amount in
				currentAmount = 0
			}
	}
	
	func byStrings(proxy: GeometryProxy) -> some View {
		ScrollView {
			HStack(spacing: 0) {
				FretMarkersView(viewModel: FretMarkersViewModel(fretMarkers: FretMarker.standard))
					.frame(width: 30)
				StringView(viewModel: viewModel.stringViewModel(for: .e2))
				StringView(viewModel: viewModel.stringViewModel(for: .a2))
				StringView(viewModel: viewModel.stringViewModel(for: .d3))
				StringView(viewModel: viewModel.stringViewModel(for: .g3))
				StringView(viewModel: viewModel.stringViewModel(for: .b3))
				StringView(viewModel: viewModel.stringViewModel(for: .e4))
			}
			.frame(height: proxy.size.height * zoomFactor)
			.gesture(magnification)
			.onAppear {
				UIScrollView.appearance().bounces = false
			}
		}
	}
	
	// deprecated
	var byFrets: some View {
		VStack(spacing: 0) {
			SaddleView()
				.frame(height: 5)
			VStack(spacing: 0) {
				ForEach(viewModel.fretMarkers, content: { fret in
					NumberedFretView(fretNumber: fret.number)
				})
			}
		}
	}
	
	public init(viewModel: FretboardViewModel) {
		self.viewModel = viewModel
	}
}

struct SaddleView: View {
	var body: some View {
		GeometryReader { proxy in
			Color.primary
				.frame(width: proxy.size.width / 1.4,
					   height: 5)
				.offset(CGSize(width: proxy.size.width / 4.5, height: 0))
		}
	}
}

struct FretboardView_Previews: PreviewProvider {
    static var previews: some View {
		FretboardView(viewModel: FretboardViewModel(fretboard: FretboardConfiguration.mock))
    }
}
