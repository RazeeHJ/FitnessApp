//
//  BodyLarge.swift
//  FitnessFeed
//
//  Created by Razee Hussein-Jamal on 2023-04-02.
//

import SwiftUI
import DesignSystem

struct BodyLarge: View {
    struct Model {
        let title: String
        let foregroundColor: DS.Color
    }
    
    let model: Model
    
    var body: some View {
        Text(model.title)
            .dsTypography(.headline, color: model.foregroundColor)
    }
}

extension BodyLarge.Model {
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
struct BodyLarge_Previews: PreviewProvider {
    static var previews: some View {
        BodyLarge(model: .fixture())
            .preferredColorScheme(.light)
        
        BodyLarge(model: .fixture())
            .preferredColorScheme(.dark)
    }
}
#endif