//
//  PrimarySquareCard.swift
//  FitnessFeed
//
//  Created by Razee Hussein-Jamal on 2023-03-23.
//

import SwiftUI
import DesignSystem

struct PrimarySquareCard: View {
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
        VStack(alignment: .leading) {
            HStack(spacing: .dsSpacing(.medium)) {
         
                BodyLarge(model: .fixture(title: model.title, foregroundColor: model.foregroundColor))
                        .multilineTextAlignment(.leading)
                
                Spacer()
                
                model.image
                    .resizable()
                    .renderingMode(.template)
                    .dsForegroundColor(model.foregroundColor)
                    .dsFrameOfSize(.xLarge)
            }
            
            HeadlineLarge(model: .fixture(title: model.description, foregroundColor: model.foregroundColor))
        }
        .dsPadding(.small)
        .dsBackgroundColor(model.backgroundColor)
        .dsCornerRadius(.small)
    }
}

extension PrimarySquareCard.Model {
    static func fixtureCompletedExercises(
        title: String = "Completed exercises",
        image: Image = .init("icon_watch"),
        description: String = "2/4",
        foregroundColor: DS.Color = .secondaryDark,
        backgroundColor: DS.Color = .primaryMain
    ) -> Self {
        .init(
            title: title,
            image: image,
            description: description,
            foregroundColor: foregroundColor,
            backgroundColor: backgroundColor
        )
    }
    
    static func fixtureBurnedCalories(
        title: String = "Burned kcal",
        image: Image = .init(""),
        description: String = "346",
        foregroundColor: DS.Color = .secondaryDark,
        backgroundColor: DS.Color = .primaryMain
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
struct PrimaryCard_Previews: PreviewProvider {
    static var previews: some View {
        PrimarySquareCard(model: .fixtureCompletedExercises())
            .preferredColorScheme(.light)
        
        PrimarySquareCard(model: .fixtureCompletedExercises())
            .preferredColorScheme(.dark)
    }
}
#endif
