import Foundation
import SwiftUI

public func colNormal(r: Int, g: Int, b: Int) -> Color{
    let r1 = (Double(r+1)/256.0)
    let g1 = (Double(g+1)/256.0)
    let b1 = (Double(b+1)/256.0)
    return Color(red: r1, green: g1, blue: b1)
}

public func colAlpha(r: Int, g: Int, b: Int, a: Double) -> Color{
    let r1 = (Double(r+1)/256.0)
    let g1 = (Double(g+1)/256.0)
    let b1 = (Double(b+1)/256.0)
    return Color(red: r1, green: g1, blue: b1).opacity(a)
}

public func Pythm(a1: CGFloat, a2: CGFloat, b1: CGFloat, b2: CGFloat) -> CGFloat {
    let a = (a1 - a2)
    let b = (b1 - b2)
    return CGFloat(sqrt((a*a)+(b*b))/200)
}

public func roundx(x: CGFloat, sf: Int) -> String {
    let finalx = String(format: "%.\(sf)f", x)
    return finalx
}

public func repeater(action: @escaping () -> Void, delay: CGFloat, reps: Double? = .infinity, esc: Binding<Bool>?) {
    var i = 0.0
    Task {
        while i < (reps ?? .infinity) && !(esc?.wrappedValue ?? false) {
            action()
            try? await Task.sleep(for: .seconds(delay))
            i += 1
        }
    }
    
}
