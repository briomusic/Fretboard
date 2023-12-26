import SwiftUI

struct StringView: View {
	let viewModel: StringViewModel
	
	var body: some View {
		GeometryReader { proxy in
			VStack(spacing: 0) {
				FretLineView(lineWidth: 4, stringPosition: viewModel.stringPosition, proxy: proxy)
					.offset(CGSize(width: 0, height: -proxy.size.height / 2))
				
				VStack(spacing: 0) {
					ForEach(viewModel.fretColors) { fingeringColors in
						FretStringView(fretColors: fingeringColors.colors, stringPosition: viewModel.stringPosition)
					}
				}
			}
		}
	}
}


struct StringView_Previews: PreviewProvider {
    static var previews: some View {
		StringView(viewModel: StringViewModel(string: .d3, fretColors: FingeringColors.stub12Frets))
    }
}
