import SwiftUI

public struct FretboardView: View {
	let viewModel: FretboardViewModel
	
	@State private var zoomFactor = CGFloat(1)
	@State private var currentAmount = 0.0
	@State private var finalAmount = 1.0

	public var body: some View {
		GeometryReader { proxy in
			ScrollView(.vertical) {
				byStrings
					.frame(height: proxy.size.height * zoomFactor)
					.scaleEffect(x: 1, y: currentAmount + finalAmount)
			}
			.gesture(magnification)
			.onAppear {
				UIScrollView.appearance().bounces = false
			}
		}
	}
	
	var magnification: some Gesture {
		MagnificationGesture()
			.onChanged { amount in
				currentAmount = amount - 1
			}
			.onEnded { amount in
				if zoomFactor + currentAmount > viewModel.minZoom,
				   zoomFactor + currentAmount < viewModel.maxZoom {
					zoomFactor += currentAmount
				}
				print("amount: \(amount), current: \(currentAmount) zoom: \(zoomFactor)")
//				finalAmount += currentAmount
				currentAmount = 0
			}
	}
	
	var byStrings: some View {
		HStack(spacing: 0) {
			FretMarkersView(viewModel: viewModel.fretMarkersViewModel())
				.frame(width: 30)
			StringView(viewModel: viewModel.stringViewModel(for: .e2))
			StringView(viewModel: viewModel.stringViewModel(for: .a2))
			StringView(viewModel: viewModel.stringViewModel(for: .d3))
			StringView(viewModel: viewModel.stringViewModel(for: .g3))
			StringView(viewModel: viewModel.stringViewModel(for: .b3))
			StringView(viewModel: viewModel.stringViewModel(for: .e4))
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
