//
//  Caption.swift
//  FitnessFeed
//
//  Created by Razee Hussein-Jamal on 2023-04-12.
//

import SwiftUI
import DesignSystem

struct Caption: View {
    struct Model {
        let title: String
        let foregroundColor: DS.Color
    }
    
    let model: Model
    
    var body: some View {
        Text(model.title)
            .dsTypography(.caption, color: model.foregroundColor)
    }
}

extension Caption.Model {
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
struct Caption_Previews: PreviewProvider {
    static var previews: some View {
        Caption(model: .fixture())
            .preferredColorScheme(.light)
        
        Caption(model: .fixture())
            .preferredColorScheme(.dark)
    }
}
#endif
