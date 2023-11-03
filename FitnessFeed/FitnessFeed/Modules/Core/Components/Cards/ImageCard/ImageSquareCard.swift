//
//  ImageSquareCard.swift
//  FitnessFeed
//
//  Created by Razee Hussein-Jamal on 2023-04-02.
//

import SwiftUI
import DesignSystem

struct ImageSquareCard: View {
    struct Model {
        let title: String
        let calories: String
        let time: String
        let bookmarkImage: Image
        let calorieImage: Image
        let timerImage: Image
        let foregroundColor: DS.Color
        let backgroundImage: Image
    }
    
    let model: Model
    
    var body: some View {
        content
    }
    
    var content: some View {
        VStack(alignment: .leading) {

            HStack {
                Spacer()
                
                circleImageView
                    .dsPadding(top: .small, trailing: .small)
            }
            
            VStack(alignment: .leading) {
                BodyLarge(model: .fixture(title: model.title, foregroundColor: model.foregroundColor))
                    .dsPadding(top: .xxLarge)

                HStack(spacing: .dsSpacing(.tiny)) {
                    rectangularImageView(title: model.calories, image: model.calorieImage)
                    rectangularImageView(title: model.time, image: model.timerImage)
                }
            }
            .dsPadding(top: .xxLarge, leading: .small, bottom: .small, trailing: .small)
        }
        .background {
            model.backgroundImage
                .resizable()
                .aspectRatio(contentMode: .fill)
        }
        .dsCornerRadius(.small)
    }
    
    var circleImageView: some View {
        ZStack {
            Circle()
                .dsOpacing(.xSmall)
                .dsFrameOfSize(.large)
            
            model.bookmarkImage
                .renderingMode(.template)
                .dsForegroundColor(model.foregroundColor)
        }
    }
    
    func rectangularImageView(title: String, image: Image) -> some View {
        HStack {
            image
                .renderingMode(.template)
                .dsForegroundColor(model.foregroundColor)

            Caption(model: .fixture(title: title, foregroundColor: model.foregroundColor))
        }
        .dsPadding(top: .tiny, leading: .xSmall, bottom: .tiny, trailing: .xSmall)
        .background(
            RoundedRectangle(cornerRadius: .dsCornerRadius(.large))
                .dsOpacing(.xSmall)
        )
    }
}

extension ImageSquareCard.Model {
    static func fixtureKickboxing(
        title: String = "Kickboxing",
        calories: String = "325 kcal",
        time: String = "30 min",
        bookmarkImage: Image = .init(systemName: "bookmark"),
        calorieImage: Image = .init(systemName: "flame"),
        timerImage: Image = .init(systemName: "timer"),
        foregroundColor: DS.Color = .neautralWhiteMain,
        backgroundImage: Image = .init("image_kickboxing", bundle: Bundle(identifier: "com.rhj.FitnessFeed"))
    ) -> Self {
        .init(
            title: title,
            calories: calories,
            time: time,
            bookmarkImage: bookmarkImage,
            calorieImage: calorieImage,
            timerImage: timerImage,
            foregroundColor: foregroundColor,
            backgroundImage: backgroundImage
        )
    }
    
    static func fixtureFullbodyWorkout(
        title: String = "Fullbody Workout",
        calories: String = "325 kcal",
        time: String = "30 min",
        bookmarkImage: Image = .init(systemName: "bookmark"),
        calorieImage: Image = .init(systemName: "flame"),
        timerImage: Image = .init(systemName: "timer"),
        foregroundColor: DS.Color = .neautralWhiteMain,
        backgroundImage: Image = .init("image_fullbody_workout", bundle: Bundle(identifier: "com.rhj.FitnessFeed"))
    ) -> Self {
        .init(
            title: title,
            calories: calories,
            time: time,
            bookmarkImage: bookmarkImage,
            calorieImage: calorieImage,
            timerImage: timerImage,
            foregroundColor: foregroundColor,
            backgroundImage: backgroundImage
        )
    }
}

#if DEBUG
struct ImageSquareCard_Previews: PreviewProvider {
    static var previews: some View {
        ImageSquareCard(model: .fixtureKickboxing())
            .preferredColorScheme(.light)
        
        ImageSquareCard(model: .fixtureKickboxing())
            .preferredColorScheme(.dark)
    }
}
#endif
