//
//  SecondaryRectangularCard.swift
//  FitnessFeed
//
//  Created by Razee Hussein-Jamal on 2023-04-02.
//

import SwiftUI
import DesignSystem

struct SecondaryRectangularCard: View {
    struct Model {
        let title: String
        let image: Image
        let description: String
        let foregroundColor: DS.Color
        let backgroundColor: DS.Color
    }
    
    let model: Model
    
    var body: some View {
        content
    }
    
    var content: some View {
        HStack {
            HeadlineLarge(model: .fixture(title: model.title, foregroundColor: model.foregroundColor))
            
            VStack {
                Spacer()

                BodyLarge(model: .fixture(title: model.description, foregroundColor: model.foregroundColor))
            }
            
            Spacer()
            
            model.image
                .resizable()
                .renderingMode(.template)
                .dsForegroundColor(model.foregroundColor)
                .dsFrameOfSize(.medium)
        }
        .dsFrameOfHeight(.small)
        .dsPadding(.medium)
        .dsBackgroundColor(model.backgroundColor)
        .dsCornerRadius(.small)
    }
}

extension SecondaryRectangularCard.Model {
    static func fixture(
        title: String = "7642",
        image: Image = .init("icon_walk", bundle: Bundle(identifier: "com.rhj.FitnessFeed")),
        description: String = "steps",
        foregroundColor: DS.Color = .neautralWhiteDark,
        backgroundColor: DS.Color = .secondaryMain
    ) -> Self {
        .init(
            title: title,
            image: image,
            description: description,
            foregroundColor: foregroundColor,
            backgroundColor: backgroundColor
        )
    }
}

#if DEBUG
struct SecondaryCard_Previews: PreviewProvider {
    static var previews: some View {
        SecondaryRectangularCard(model: .fixture())
            .preferredColorScheme(.light)
        
        SecondaryRectangularCard(model: .fixture())
            .preferredColorScheme(.dark)
    }
}
#endif

