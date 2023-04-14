//
//  BodySmall.swift
//  FitnessFeed
//
//  Created by Razee Hussein-Jamal on 2023-04-02.
//

import SwiftUI
import DesignSystem

struct BodySmall: View {
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

extension BodySmall.Model {
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
struct BodySmall_Previews: PreviewProvider {
    static var previews: some View {
        BodySmall(model: .fixture())
            .preferredColorScheme(.light)
        
        BodySmall(model: .fixture())
            .preferredColorScheme(.dark)
    }
}
#endif
