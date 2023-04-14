//
//  ContentView.swift
//  FitnessApp
//
//  Created by Razee Hussein-Jamal on 2023-04-13.
//

import SwiftUI
import FitnessFeed

struct MainScene: View {
    var body: some View {
        Tabbar(tabProviders: [
            homeTabProvider,
            workoutTabProvider
        ])
    }
}


var homeTabProvider: TabViewProvider {
    return .init(imageName: "house.fill", tabName: "HOME") {
        AnyView(HomeScene())
//        let navigationView = NavigationView {
//            AnyView(HomeScene())
//        }
//
//        return AnyView(navigationView)
    }
}

var workoutTabProvider: TabViewProvider {
    return .init(imageName: "person.fill", tabName: "PROFILE") {
        return AnyView(Text(""))
    }
}

#if DEBUG
struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScene()
    }
}
#endif
