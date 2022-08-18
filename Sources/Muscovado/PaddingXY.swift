//
//  Created by Ian Leon on 8/17/22.
//

import SwiftUI

@available(iOS 15, macOS 12.0, *)
struct PaddingXY: ViewModifier {
    let paddingX: CGFloat
    let paddingY: CGFloat
    
    func body(content: Content) -> some View {
        return content
            .padding([.top,.bottom], paddingY)
            .padding([.leading,.trailing], paddingX)
    }
}

@available(iOS 15, macOS 12.0, *)
public extension View {
    func paddingXY(_ x: CGFloat, _ y: CGFloat) -> some View {
        modifier(PaddingXY(paddingX: x, paddingY: y))
    }
}
