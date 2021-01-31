//
//  FakeDisclosures.swift
//  VanguardCopy
//
//  Created by Kirtan Patel on 1/30/21.
//

import SwiftUI

struct FakeDisclosures: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text("""
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum bibendum mauris ornare libero commodo tristique. Praesent pellentesque quis ipsum vel rhoncus. Duis commodo dictum sodales. Vivamus ut nisi condimentum, venenatis mi ut, cursus urna. Phasellus at ipsum posuere dui sagittis vulputate sed quis massa. Suspendisse euismod auctor vestibulum. Aenean bibendum, urna ut consequat viverra, nulla neque dapibus sem, et ullamcorper lectus mi at eros. Quisque quis rhoncus justo, eu efficitur ligula. Aliquam erat massa, scelerisque eget interdum eget, lacinia in orci. Sed finibus faucibus odio ac fermentum. Ut rutrum orci metus, et molestie ex bibendum in. Cras vestibulum, lacus eu dignissim vulputate, nunc ligula tincidunt dolor, ac tempus ex sapien ac velit.
                    
Cras pretium cursus orci non rhoncus. Sed eu efficitur mauris, in venenatis nulla. Phasellus pulvinar leo gravida nisl ullamcorper efficitur. Pellentesque nec sem nulla. Sed id imperdiet metus. Maecenas libero ante, efficitur sit amet quam eget, laoreet ultricies neque. Aenean eleifend tincidunt posuere. Integer fringilla eleifend purus eget sagittis. Suspendisse cursus, ipsum ac condimentum tincidunt, lectus ante porttitor lacus, eu eleifend nisl leo at ante. Aliquam erat volutpat. Morbi luctus lobortis lacus, ac ullamcorper metus. Cras condimentum, justo eu auctor convallis, dui eros faucibus nunc, eget egestas magna ante eu nunc. Donec accumsan non eros vitae tincidunt. Sed convallis sodales congue. Nunc id feugiat mi.
""")
                    .fontWeight(.thin)
                    .padding()
            }
            .navigationBarTitle("Disclosures", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark")
                    }
                }
            }.accentColor(Color("vanguard"))
        }
    }
}

struct FakeDisclosures_Previews: PreviewProvider {
    static var previews: some View {
        FakeDisclosures()
    }
}
