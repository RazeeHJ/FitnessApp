//
//  HomeScene.swift
//  FitnessFeed
//
//  Created by Razee Hussein-Jamal on 2023-04-02.
//

import SwiftUI

public struct HomeScene: View {
    public init() {}

    public var body: some View {
        topContent
    }
    
    var topContent: some View {
        HStack {
            PrimarySquareCard(model: .fixtureCompletedExercises())
            
            PrimarySquareCard(model: .fixtureBurnedCalories())
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
