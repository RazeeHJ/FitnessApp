//
//  Title.swift
//  FitnessFeed
//
//  Created by Razee Hussein-Jamal on 2023-04-14.
//

import SwiftUI
import DesignSystem

struct Title: View {
    struct Model {
        let title: String
        let foregroundColor: DS.Color
    }
    
    let model: Model
    
    var body: some View {
        Text(model.title)
            .dsTypography(.title, color: model.foregroundColor)
    }
}

extension Title.Model {
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
struct Title_Previews: PreviewProvider {
    static var previews: some View {
        Title(model: .fixture())
            .preferredColorScheme(.light)
        
        Title(model: .fixture())
            .preferredColorScheme(.dark)
    }
}
#endif
