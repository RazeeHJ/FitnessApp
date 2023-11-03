//
//  HomeScene.swift
//  FitnessFeed
//
//  Created by Razee Hussein-Jamal on 2023-04-02.
//

import SwiftUI
import DesignSystem

public struct HomeScene: View {
    public init() {}

    public var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                BodyLarge(model: .fixtureWelcomeMessage())
                    .dsPadding(top: .small)

                VStack(alignment: .center, spacing: .dsSpacing(.small)) {
                    topContent

                    middleContent
                    
                    bottomContent
                }
                .dsPadding(top: .medium)
            }
            .dsPadding(leading: .xSmall, trailing: .xSmall)
        }
    }
    
    var topContent: some View {
        HStack(spacing: .dsSpacing(.xSmall)) {
            PrimarySquareCard(model: .fixtureCompletedExercises())
            
            PrimarySquareCard(model: .fixtureBurnedCalories())
        }
    }
    
    var middleContent: some View {
        SecondaryRectangularCard(model: .fixture())
    }
    
    var bottomContent: some View {
        VStack(alignment: .leading) {
            BodyLarge(model: .fixtureTodaysActivity())
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: .dsSpacing(.small)) {
                    ImageSquareCard(model: .fixtureKickboxing())
                    ImageSquareCard(model: .fixtureFullbodyWorkout())
                }
            }
            
            PrimarySquareCard(model: .fixtureMotivation())
        }
    }
}

#if DEBUG
struct HomeScene_Previews: PreviewProvider {
    static var previews: some View {
        HomeScene()
    }
}
#endif
