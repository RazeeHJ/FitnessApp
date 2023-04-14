//
//  HeadlineSmall.swift
//  FitnessFeed
//
//  Created by Razee Hussein-Jamal on 2023-03-23.
//

import SwiftUI
import DesignSystem

struct HeadlineSmall: View {
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

extension HeadlineSmall.Model {
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
struct HeadlineSmall_Previews: PreviewProvider {
    static var previews: some View {
        HeadlineSmall(model: .fixture())
            .preferredColorScheme(.light)
        
        HeadlineSmall(model: .fixture())
            .preferredColorScheme(.dark)
    }
}
#endif
