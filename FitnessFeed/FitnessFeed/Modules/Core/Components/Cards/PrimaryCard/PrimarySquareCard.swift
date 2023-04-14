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
        VStack(alignment: .leading, spacing: .dsSpacing(.medium)) {
            HStack(spacing: .dsSpacing(.medium)) {
                model.image
                    .resizable()
                    .renderingMode(.template)
                    .dsForegroundColor(model.foregroundColor)
                    .dsFrameOfSize(.medium)
                         
                Spacer()
                
                Title(model: .fixture(title: model.description, foregroundColor: model.foregroundColor))
            }

            BodySmall(model: .fixture(title: model.title, foregroundColor: model.foregroundColor))
                .multilineTextAlignment(.leading)
        }
        .dsFrameOfHeight(.xxLarge)
        .dsPadding(.xSmall)
        .dsBackgroundColor(model.backgroundColor)
        .dsCornerRadius(.small)
    }
}

extension PrimarySquareCard.Model {
    static func fixtureCompletedExercises(
        title: String = "Done Workout",
        image: Image = .init("icon_weight_lifting", bundle: Bundle(identifier: "com.rhj.FitnessFeed")),
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
        image: Image = .init("icon_fire", bundle: Bundle(identifier: "com.rhj.FitnessFeed")),
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
