//
//  Callout.swift
//  FitnessFeed
//
//  Created by Razee Hussein-Jamal on 2023-04-12.
//

import SwiftUI
import DesignSystem

struct Callout: View {
    struct Model {
        let title: String
        let foregroundColor: DS.Color
    }
    
    let model: Model
    
    var body: some View {
        Text(model.title)
            .dsTypography(.callout, color: model.foregroundColor)
    }
}

extension Callout.Model {
    static func fixture(
        title: String = "Hello, World!",
        foregroundColor: DS.Color = .primaryMain
    ) -> Self {
        .init(
            title: title,
            foregroundColor: foregroundColor
        )
    }
}

#if DEBUG
struct Callout_Previews: PreviewProvider {
    static var previews: some View {
        Callout(model: .fixture())
            .preferredColorScheme(.light)
        
        Callout(model: .fixture())
            .preferredColorScheme(.dark)
    }
}
#endif
