import SwiftUI

// code adapted from https://www.youtube.com/watch?v=6PFYMUL8uQY

struct RingView: View {
    @State var show = false
    
    @State var color: Color
    @State var endVal: CGFloat
    @State var sizeScale: CGFloat
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)), style: StrokeStyle(lineWidth: 12 * (sizeScale * 0.75), lineCap: .round, lineJoin: .round))
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/ * sizeScale, height: 100 * sizeScale, alignment: .center)
                .opacity(0.2)
            
            Circle()
                .trim(from: show ? (1 - endVal) : 0.99, to: 1.0)
                .stroke(color, style: StrokeStyle(lineWidth: 15 * (sizeScale * 0.75), lineCap: .round, lineJoin: .round))
                .frame(width: 100 * sizeScale, height: 100 * sizeScale, alignment: .center)
                .rotationEffect(.degrees(90.0))
                .rotation3DEffect(Angle(degrees: 180), axis: (x: 1, y: 0, z: 0))
                .animation(.easeOut(duration: 2))
                
        }
        .padding(.all, 20 * (sizeScale/2))
        .onAppear() {
            self.show.toggle()
        }
    }
}