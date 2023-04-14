//
//  Tabbar.swift
//  FitnessApp
//
//  Created by Razee Hussein-Jamal on 2023-04-13.
//

import SwiftUI
import DesignSystem

struct Tabbar: View {
    let tabProviders: [TabViewProvider]
    
    init(tabProviders: [TabViewProvider]) {
        self.tabProviders = tabProviders
    }
    
    var body: some View {
        TabView {
            ForEach(tabProviders, id: \.tabName) { tabProvider in
                tabProvider.viewProvider()
                    .tabbarItem(
                        imageName: tabProvider.imageName,
                        tabName: tabProvider.tabName
                    )
            }
        }
        .dsAccentColor(.tertiaryDark)
    }
}

#if DEBUG
struct Tabbar_Previews: PreviewProvider {
    static var previews: some View {
        let tabProvider = TabViewProvider(
            imageName: "house.fill",
            tabName: "Home",
            viewProvider: { AnyView(Text("Home Tab")) } )
        
        Tabbar(tabProviders: [tabProvider])
    }
}
#endif
