//
//  SwiftUIView.swift
//  
//
//  Created by Brio Taliaferro on 26.12.23.
//

import SwiftUI

struct FretMarkersView: View {
	let viewModel: FretMarkersViewModel
	
	var body: some View {
		GeometryReader { proxy in
			VStack(spacing: 0) {
				EmptyView()
				
				VStack(spacing: 0) {
					ForEach(viewModel.fretMarkers) { fretMarker in
						FretNumberView(fretNumber: fretMarker.number)
							.frame(height: proxy.size.height / CGFloat(viewModel.fretMarkers.count))
					}
				}
			}
		}
	}
}

#Preview {
	FretMarkersView(viewModel: FretMarkersViewModel(fretMarkers: FretMarker.standard))
}
