//
//  HeadlineLarge.swift
//  FitnessFeed
//
//  Created by Razee Hussein-Jamal on 2023-03-23.
//

import SwiftUI
import DesignSystem

struct HeadlineLarge: View {
    struct Model {
        let title: String
        let foregroundColor: DS.Color
    }
    
    let model: Model
    
    var body: some View {
        Text(model.title)
            .dsTypography(.largeTitle, color: model.foregroundColor)
    }
}

extension HeadlineLarge.Model {
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
struct HeadlineLarge_Previews: PreviewProvider {
    static var previews: some View {
        HeadlineLarge(model: .fixture())
            .preferredColorScheme(.light)
        
        HeadlineLarge(model: .fixture())
            .preferredColorScheme(.dark)
    }
}
#endif
