import SwiftUI

struct PieView: View {
    
    var start: Double
    var end: Double
	var color: Color

    var body: some View {
        Pie(startAngle: Angle(degrees: start), endAngle: Angle(degrees: end))
            .foregroundColor(color)
            .padding(5)
    }
}


struct Pie: Shape {
    
    var startAngle: Angle
    var endAngle: Angle
    var clockwise: Bool = false
    
    func path(in rect: CGRect) -> Path {
        
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = min(rect.width, rect.height) / 2
        let start = CGPoint(
            x: center.x + radius * CGFloat(cos(startAngle.radians)),
            y: center.y + radius * CGFloat(sin(startAngle.radians))
            )
        
        var p = Path()
        p.move(to: center)
        p.addLine(to: start)
        p.addArc(center: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: clockwise)
        p.addLine(to: center)
        
        return p
    }
}



struct PieView_Previews: PreviewProvider {
    static var previews: some View {
		return PieView(start: 115, end: 225, color: .blue)
    }
}

