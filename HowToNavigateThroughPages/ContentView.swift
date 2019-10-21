//
//  ContentView.swift
//  HowToNavigateThroughPages
//
//  Created by ramil on 21.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            page1().navigationBarTitle("Page1", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct page1: View {
    var body: some View {
        VStack {
            Text("Hello From Page 1")
                .fontWeight(.heavy)
            
            NavigationLink(destination: page2()) {
                Text("Go to Page2")
            }
        }.navigationBarTitle("Page2", displayMode: .inline)
    }
}

struct page2: View {
    var body: some View {
        VStack {
            Text("Hello From Page 2")
                .fontWeight(.heavy)
            
            NavigationLink(destination: page3()) {
                Text("Go to Page3")
            }
        }.navigationBarTitle("Page2", displayMode: .inline)
    }
}

struct page3: View {
    var body: some View {
        VStack {
            Text("Hello From Page 3")
                .fontWeight(.heavy)
        }
    }
}
