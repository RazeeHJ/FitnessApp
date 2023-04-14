//
//  TabbarItem.swift
//  FitnessApp
//
//  Created by Razee Hussein-Jamal on 2023-04-13.
//

import SwiftUI

struct TabbarItem: View {
    let imageName: String
    let tabName: String
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
            Text(tabName)
        }
        .dsFrameOfHeight(.xxLarge)
        .background(.red)
        .foregroundColor(.accentColor)
    }
}

extension View {
    func tabbarItem(
        imageName: String,
        tabName: String
    ) -> some View {
        self.tabItem {
            TabbarItem(imageName: imageName, tabName: tabName)
        }
    }
}

#if DEBUG
struct TabbarItem_Previews: PreviewProvider {
    static var previews: some View {
        TabbarItem(imageName: "house.fill", tabName: "Home")
    }
}
#endif
