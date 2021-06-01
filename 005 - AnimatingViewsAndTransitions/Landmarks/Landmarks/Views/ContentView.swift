//
//  ContentView.swift
//  Landmarks
//
//  Created by Woraphot Chokratansombat on 1/6/2564 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
