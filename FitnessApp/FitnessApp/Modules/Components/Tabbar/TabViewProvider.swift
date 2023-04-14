//
//  TabViewProvider.swift
//  FitnessApp
//
//  Created by Razee Hussein-Jamal on 2023-04-13.
//

import SwiftUI

struct TabViewProvider {
    let imageName: String
    let tabName: String
    let viewProvider: () -> AnyView
}
