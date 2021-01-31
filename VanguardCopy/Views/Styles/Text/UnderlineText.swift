//
//  UnderlineText.swift
//  VanguardCopy
//
//  Created by Kirtan Patel on 1/30/21.
//

import SwiftUI

struct UnderlineText: View {
    var text: String
    
    var body: some View {
        VStack(spacing: 0) {
            Text(text)
                .font(.system(size: 18))
                .bold()
            Line()
                .stroke(style: StrokeStyle(lineWidth: 2, dash: [3]))
                .foregroundColor(.blue)
                .frame(height: 2)
        }.fixedSize()
    }
}


struct Line: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        return path
    }
}

struct UnderlineText_Previews: PreviewProvider {
    static var previews: some View {
        UnderlineText(text: "hello")
    }
}
